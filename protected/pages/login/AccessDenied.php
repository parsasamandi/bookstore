<?php
class AccessDenied extends TPage{
	public function onInit($param)
	{
		parent::onInit($param);
		if(isset($_SESSION["session_user"])){
// 			$this->lit->Text=$_SESSION["session_user"];
			$user = AccountRecord::finder()->find("account_id = ? ",$_SESSION["session_user"]);
			if($user instanceof AccountRecord)
			{
				$this->pnlAccessDenied->Visible=true;
				$this->pnlLogin->Visible=false;
			}else 
			{
				$this->pnlAccessDenied->Visible=false;
				$this->pnlLogin->Visible=true;
			}
		}else 
		{
			$this->pnlAccessDenied->Visible=false;
			$this->pnlLogin->Visible=true;
		}
	} 
// 	public function LogIn()
// 	{
// 		$this->Response->redirect($this->Service->constructUrl("login.UserLogin"));
// 	}
}