<?php

// Include TDbUserManager.php file which defines TDbUser
Prado::using('System.Security.TDbUserManager');

/**
 * PnuExpertsUserManager Class.
 * BlogUser represents the user data that needs to be kept in session.
 * Default implementation keeps username and role information.
 */
class DNUserManager extends TDbUser
{
	/**
	 * Creates a PnuExpertsUserManager object based on the specified username.
	 * This method is required by TDbUser. It checks the database
	 * to see if the specified username is there. If so, a PnuExpertsUserManager
	 * object is created and initialized.
	 * @param string the specified username in this case email
	 * @return PnuExpertsUserManager the user object, null if username is invalid.
	 */
	public function createUser($username)
	{
		// use UserRecord Active Record to look for the specified username
		$userRecord=username::finder()->findByUsername($username);
		if($userRecord instanceof username) // if found
		{
			$user = new DNUserManager($this->Manager);
			$user->Name=$username;  // set username
// 			if($userRecord->role==1)
// 				$user->Roles='admin'; // set role
// 			else if($userRecord->role==10)
// 				$user->Roles='user'; // set role
			 
			//$user->IsGuest=false;   // the user is not a guest
			return $user;
		}
		else
			return null;
	}

	/**
	 * Checks if the specified (username, password) is valid.
	 * This method is required by TDbUser.
	 * @param string username
	 * @param string password
	 * @return boolean whether the username and password are valid.
	 */
	public function validateUser($username,$password)
	{
		
		// use UserRecord Active Record to look for the (username, password) pair.
		$password = md5($password);
		return UsersRecord::finder()->findBy_username_AND_password($username,$password)!==null;
	}

	/**
	 * @return boolean whether this user is an administrator.
	 */
	public function getIsAdmin()
	{
		return $this->isInRole('admin');
	}
}

