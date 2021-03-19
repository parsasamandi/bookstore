<?php
class NewPublisher extends TPage{
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
		$publisher = PublisherRecord::finder()->find("publisher_id = ?",$id_decode);
		if($publisher instanceof PublisherRecord)
		{
			$this->publisher_name->Text = $publisher->publisher_name;
		}
	}
	public function AddPublisher($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);	
		$publisher = PublisherRecord::finder()->find("publisher_id = ?",$id_decode);
		if(!($publisher instanceof PublisherRecord)){
			$publisher = new PublisherRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	
			//Product info
			$publisher->publisher_name = $this->publisher_name->Text;
			$publisher->_del = 0;
			$publisher->save();  
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
			if(strlen($this->publisher_name->Text) < 5)
			{
				$this->publisher_name->style="border-color:red;";
				$l =false;
			}else{
				$this->publisher_name->style="border-color:green;";
			}
		}
		return $l;
	}
	


}	