<?php
class RowAddressCart extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

		// $this->lit_color->Text="#ff0000";
	}
	public function editMe($sender, $param){
		$id_encode64 = base64_encode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("product.NewProduct", array("id"=>$id_encode64)));
	}

	public function more($sender, $param){
		$id_encode64 =  $this->id->Value;
		$this->Response->redirect($this->Service->constructUrl("product.EachProduct", array("id"=>$id_encode64)));
	}
	public function address($sender,$param){
		$_SESSION['address_id'] =  $this->id->Value;
		$this->buttontest->Style="background-color:#ffff00;border-radius:30px;width:1.5em";
	}

	


	
	
}