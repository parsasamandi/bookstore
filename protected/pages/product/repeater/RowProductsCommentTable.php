<?php
class RowProductsCommentTable extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function deleteMe($param,$sender){
        $id_encode64 =  $this->id->Value;
        $pro_com = ProductCommentRecord::finder()->find("productComment_id = ?" , $id_encode64);
        if($pro_com instanceof ProductCommentRecord){
            $pro_com->delete();
            $this->Response->redirect($this->service->constructUrl("product.ProductsCommentList"));
        }
	}

    
}
