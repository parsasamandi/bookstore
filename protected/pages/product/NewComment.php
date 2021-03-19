<?php
class NewComment extends TPage{
    public function onInit($param)
    {
		if(empty($_SESSION["session_user_digi"])){
           	$_SESSION['seesion_com'] = base64_decode($this->Request["id"]);
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
		}
    }
    public function send($sender,$param){
		if($this->htmlAreaDesc->Text != null)
		{
			$idea = new ProductCommentRecord();
			$idea->idea = $this->htmlAreaDesc->Text;
			$idea->book_id = base64_decode($this->Request['id']);
			$idea->u_id = $_SESSION['session_user_digi'];
			$idea->status = 0;
			$idea->date = JCalendar::getTodayDate();
			$idea->save();
			$this->pnlAfterAdd->Visible=true;
		}
		else{
			$this->pnlFalse->Visible=true;
		}	
	}
   
}

