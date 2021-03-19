<?php
class RowCarts extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);  
	} 
	public function deleteMe($param,$sender){ 
		$id = $this->id->Value;
		$cart = CartRecord::finder()->find("ca_id = ?",$id);
		if($cart instanceof CartRecord)
		{
			$cart->delete();
		}
		$this->Response->redirect($this->Service->constructUrl("package.Cart"));
	}
	
}

