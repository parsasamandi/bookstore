<?php
class login extends TPage{
	public function onInit($param){
		parent::onInit($param); 
		if(!$this->isPostback && !$this->isCallback)
		{
			if(isset($_SESSION["session_user_digi"])){
				$user = UserRecord::finder()->find("u_id = ? ",$_SESSION["session_user_digi"]);
				if($user instanceof UserRecord){ 
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
// 		if(isset($_POST['g-recaptcha-response']) && !empty($_POST['g-recaptcha-response']))
// 		{
// 			$secret = '6LfPGucUAAAAAMrCm-MSVML5JuhvCg36VIl-RoCi';
// 			$verifyResponse = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secret.'&response='.$_POST['g-recaptcha-response']);
// 			$responseData = json_decode($verifyResponse);
// 			if($responseData->success)
// 			{
// 				$succMsg = 'Your contact request has submitted successfully.';
// // 				$this->Response->redirect($this->Service->constructUrl("AdminHome"));
// // 				password_verify ( string $password , string $hash )
// 				$user = UserRecord::finder()->find("name = ? and status = ? ",$this->txt_name->Text,1);
// 				if($user instanceof UserRecord){
// 					$pass = hash('sha256',$this->txt_password->Text);
// 					if($this->txt_password->Text == $user->password)
// 					{
// 						$_SESSION["session_user_digi"] = $user->u_id;
// 						$user->save();
// 						$this->Response->redirect($this->Service->constructUrl("profile"));

// 					}else
// 					{
// 						$_SESSION["session_user_digi"] = null;
// 						$this->txt_name->style="border-color:red;";
// 						$this->txt_password->style="border-color:red;";
// 					}
// 				}else
// 				{
// 					$_SESSION["session_user_digi"] = null;
// 					$this->txt_name->style="border-color:red;";
// 					$this->txt_password->style="border-color:red;";
// 				}
// 			}
// 			else
// 			{
// 				$errMsg = 'Robot verification failed, please try again.';
// 			}
// 		}

		$user = UserRecord::finder()->find("email = ?",$this->txt_email->Text);
		if($user instanceof UserRecord){
			$pass = hash('sha256',$this->txt_password->Text);
			// $pass = $this->txt_password->Text;
			if($pass == $user->password ||  $this->txt_password->Text == $user->password)
			{
				$_SESSION["session_user_digi"] = $user->u_id;
				if(isset($_SESSION['seesion_p']))
				{
					$this->Response->redirect($this->Service->constructUrl("product.EachProduct",array("id"=>base64_encode($_SESSION['seesion_p']))));
				}
				if(isset($_SESSION['like'])){
					$this->Response->redirect($this->Service->constructUrl("product.Products",array("id"=>base64_encode($_SESSION['like']))));
				}
				if(isset($_SESSION['AddressList'])){
					$this->Response->redirect($this->Service->constructUrl("package.ListOfAddress"));
				}
				if(isset($_SESSION['NewAddress'])){
					$this->Response->redirect($this->Service->constructUrl("package.NewAddress"));
				}
				if(isset($_SESSION['cart_session_back'])){
					$this->Response->redirect($this->Service->constructUrl("package.Cart"));
				}
				if(isset($_SESSION['session_com'])){
					$this->Response->redirect($this->Service->constructUrl("product.NewComment"));
				}
				else{
					$this->Response->redirect($this->Service->constructUrl("home"));
				}
				$user->save();
			}else
			{
				$_SESSION["session_user_digi"] = null;
				$this->txt_email->style="border-color:red;";
				$this->txt_password->style="border-color:red;";
			}
		}else
		{
			$_SESSION["session_user_digi"] = null;
			$this->txt_email->style="border-color:red;";
			$this->txt_password->style="border-color:red;";
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
		$_SESSION["session_user_digi"] = "" ;
		$this->Response->redirect($this->Service->constructUrl("home"));
		// $this->Response->redirect(JCalendar::curPageURL());
	}
} 