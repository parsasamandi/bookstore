<?php
class RowAddressOrder extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);


	}
	public function editMe($sender, $param){
		$id_encode64 = base64_encode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("product.NewProduct", array("id"=>$id_encode64)));
	}

	public function more($sender, $param){
		$id_encode64 =  $this->id->Value;
		$this->Response->redirect($this->Service->constructUrl("product.EachProduct", array("id"=>$id_encode64)));
	}

	


	
	
}