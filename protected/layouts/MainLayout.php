<?php
class MainLayout extends TTemplateControl
{
	public function onInit($param){
		parent::onInit($param); 
		$this->today->Text = JCalendar::getTodayDate();

		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("AdminLogin.AccessDenied"));
			}
		}else{$this->Response->redirect($this->Service->constructUrl("AdminLogin.AccessDenied"));}
	
	}
	
}
