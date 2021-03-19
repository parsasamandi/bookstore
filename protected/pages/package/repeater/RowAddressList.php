<?php
class RowAddressList extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}
	public function editMe($sender, $param){
		$id_encode64 = base64_encode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("package.EditAddress", array("id"=>$this->id->Value)));
	}
	
}