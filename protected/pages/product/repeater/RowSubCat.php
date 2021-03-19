<?php
class RowSubCat extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);
	}
    public function deleteMe($param,$sender){ 
		$id = $this->id->Value;
		$SubCat = SubCatRecord::finder()->find("sc_id = ?",$id);
		if($SubCat instanceof SubCatRecord)
		{
			$SubCat->delete();
			$this->Response->redirect($this->Service->constructUrl("product.SubCatList"));
		}   
	}
	public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("product.NewSubCat", array("id"=>$id_encode64)));
    }

}