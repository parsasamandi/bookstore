<?php
class RowCat extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);
	}
    public function deleteMe($param,$sender){ 
		$id = $this->id->Value;
		$cat = CatRecord::finder()->find("c_id = ?",$id);
		if($cat instanceof CatRecord)
		{
			$cat->delete();
			$this->Response->redirect($this->Service->constructUrl("product.CatList"));
		}   
	}
	public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("product.NewCat", array("id"=>$id_encode64)));
    }

}