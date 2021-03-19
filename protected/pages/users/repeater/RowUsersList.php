<?php
class RowUsersList extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param); 
 
	} 
	public function deleteMe($param,$sender){
		$user = UserRecord::finder()->find("u_id = ?",$this->id->Value);
		if($user instanceof UserRecord)
		{	
			$user->status = 0;
			$user->save();
			$this->Response->redirect($this->service->constructUrl("users.UsersList"));
		}
	}
	
}