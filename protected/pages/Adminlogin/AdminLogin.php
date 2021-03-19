<?php
class AdminLogin extends TPage{
	public function onInit($param){
		parent::onInit($param); 
		if(!$this->isPostback && !$this->isCallback)
		{
			if(isset($_SESSION["session_admin"])){
				$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
				if($admin instanceof AccountRecord){ 
					$this->pnlLogout->Visible=true;
					$this->pnlLogin->Visible=false;
// 					$this->Response->redirect($this->Service->constructUrl("AdminHome"));
				}
				else{
					$this->pnlLogout->Visible=false;
					$this->pnlLogin->Visible=true;
				}
			}else{
				$this->pnlLogout->Visible=false;
				$this->pnlLogin->Visible=true;
			}
		}
	}
	protected function SignIn($sender,$param)
	{

		$admin = AccountRecord::finder()->find("username = ? ",$this->txtUsername->Text);
		if($admin instanceof AccountRecord){
			$pass = hash('sha256',$this->txtPassword->Text);
			// $pass = $this->txtPassword->Text;
			if($pass == $admin->password|| $this->txtPassword->Text==$admin->password)
			{
				$_SESSION["session_admin"] = $admin->acc_id;
				$admin->last_login = JCalendar::getToday();
				$admin->save();
				$this->Response->redirect($this->Service->constructUrl("AdminHome"));
			}else
			{
				$_SESSION["session_admin"] = null;
				$this->txtUsername->style="border-color:red;";
				$this->txtPassword->style="border-color:red;";
			}
		}else
		{
			$_SESSION["session_admin"] = null;
			$this->txtUsername->style="border-color:red;";
			$this->txtPassword->style="border-color:red;";
		} 
	}
	public function validateLoginUser()
	{
		$l=true;
		if(strlen($this->txtUsername->Text)== null)
		{
			$this->txtUsername->style="border-color:red;";
			$l =false;
		}
		/**/
		if(strlen($this->txtPassword->Text) == null)
		{
			$this->txtPassword->style="border-color:red;";
			$l =false;
		}
		return $l;
	}
	public function logout($sender,$param)
	{
// 		$this->Application->getModule('auth')->logout();
		$_SESSION["session_admin"] = "" ;
		$this->Response->redirect(JCalendar::curPageURL());
	}
} 