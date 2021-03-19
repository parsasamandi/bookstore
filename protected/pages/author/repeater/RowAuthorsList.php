<?php
class RowAuthorsList extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("author.NewAuthor", array("id"=>$id_encode64)));
    }

    public function deleteMe($param,$sender){
        $id_encode64 =  $this->id->Value;
        // array("id"=>$id_encode64)
        $author = AuthorsRecord::finder()->find("author_id = ?" , $id_encode64);
        if($author instanceof AuthorsRecord){
            //0=not set/ 1 =delete
            $author->_del = 1;
            $author->save();
            $this->Response->redirect($this->service->constructUrl("author.AuthorsList"));
        }
    }

    
}
