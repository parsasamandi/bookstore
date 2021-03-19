<?php
class RowCarts1 extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);  
	} 
	public function deleteMe($param,$sender){ 
		$id_encode64 = $this->id->Value;
		$mysql = "delete from cart where ca_id =($id_encode64)";
		$ca_id = CartRecord::finder()->findBySql($mysql);
		return $ca_id;
		$this->Response->redirect($this->Service->constructUrl("package.Cart"));

	}
	
}