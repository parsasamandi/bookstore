<?php
class NewTranslator extends TPage{
public function onInit($param){
		parent::onInit($param);

		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
 

		$this->pnlAfterAdd->Visible=false;
		$this->pnlAfterAddTop->Visible=false;
		$id_decode = base64_decode($this->Request["id"]);
		$translator = TranslatorRecord::finder()->find("translator_id = ?",$id_decode);
		if($translator instanceof TranslatorRecord)
		{
			$this->translator->Text = $translator->name;
		}
	}
	public function AddTranslator($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);	
		$translator = TranslatorRecord::finder()->find("translator_id = ?",$id_decode);
		if(!($translator instanceof TranslatorRecord)){
			$translator = new TranslatorRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	
			//Product info
			$translator->name = $this->translator->Text;
			$translator->_del = 0;
			$translator->save();  
			//pnlAdd
			$this->pnlAdd->Enabled=false;
			//pnlAfterAdd
			$this->pnlAfterAdd->Visible=true;
			$this->pnlAfterAddTop->Visible=true; 
		} 
	}
	public function validateAddDevice($b)
	{
		$l=true;
		if($b){
			if(strlen($this->translator->Text) < 5)
			{
				$this->translator->style="border-color:red;";
				$l =false;
			}else{
				$this->translator->style="border-color:green;";
			}
		}
		return $l;
	}
	


}	