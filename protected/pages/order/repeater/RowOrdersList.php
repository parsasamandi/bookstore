<?php
class RowOrdersList extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}
	public function EachOrder($sender, $param){
		$this->Response->redirect($this->Service->constructUrl("order.EachOrder", array("order_id"=>$this->id->Value,"user_id"=>$this->user_id->Value)));
		// array("user_id"=>$this->id->Value)
	}

}