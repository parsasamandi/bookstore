<?php
class RowAddress extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}
	public function editMe($sender, $param){
		$id_encode64 = base64_encode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("package.NewAddress", array("id"=>base64_encode($this->id->Value))));
	}

	public function deleteMe($param,$sender){
		$id_encode64 =  $this->id->Value;
		$addr = AddressRecord::finder()->find("address_id = ?" , $id_encode64);
		if($addr instanceof AddressRecord){
			//0=not set/ 1 =delete
			$addr->_del = 1;
			$addr->save();
			$this->Response->redirect($this->service->constructUrl("package.ListOfAddress"));
		}
	}
	public function more($sender, $param){
		$id_encode64 =  $this->id->Value;
		$this->Response->redirect($this->Service->constructUrl("product.EachProduct", array("id"=>$id_encode64)));
	}
	
	
}


