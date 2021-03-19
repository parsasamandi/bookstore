<?php
class RowProductsList1 extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->book_id->Value);
        $this->Response->redirect($this->Service->constructUrl("product.NewProduct", array("id"=>$id_encode64)));
    }

    public function deleteMe($param,$sender){
        $id_encode64 =  $this->id->Value;
        // array("id"=>$id_encode64)
        $pro = BookAuthorsRecord::finder()->find("bookAuthors_id = ?" , $id_encode64);
        if($pro instanceof BookAuthorsRecord){
            //0=not set/ 1 =delete
            $book = BooksRecord::finder()->find("book_id = ?" ,$pro->book_id);
            if($book instanceof BooksRecord)
            {
                $book->_del = 1;
                $book->save();
            }
            $pro->_del = 1;
            $pro->save();
            $this->Response->redirect($this->service->constructUrl("product.ProductsList"));
        }
    }

    
}
