<?php
class RowAdmin extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}
	public function deleteMe($param,$sender){ 
		$id = $this->id->Value;
		$acc = AccountRecord::finder()->find("acc_id = ?",$id);
		if($acc instanceof AccountRecord)
		{
			$acc->delete();
			$this->Response->redirect($this->Service->constructUrl("admin.AdminList"));
		}   
	}
	public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("admin.NewAdmin", array("id"=>$id_encode64)));
    }
}