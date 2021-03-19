<?php
class RowOrdersProfile extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}
	public function EachOrder($sender, $param){
		$id = base64_decode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("order.UserEachOrder", array("order_id"=>base64_encode($this->id->Value))));
	}
	public function PrintMe($sender, $param){
		$id = base64_decode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("order.PrintEachOrder", array("order_id"=>base64_encode($this->id->Value))));
	}

}