<?php
class RowPublisherList extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("publisher.NewPublisher", array("id"=>$id_encode64)));
    }

    public function deleteMe($param,$sender){
        $id_encode64 =  $this->id->Value;
        // array("id"=>$id_encode64)
        $publisher = PublisherRecord::finder()->find("publisher_id = ?" , $id_encode64);
        if($publisher instanceof PublisherRecord){
            //0=not set/ 1 =delete
            $publisher->_del = 1;
            $publisher->save();
            $this->Response->redirect($this->service->constructUrl("publisher.PublisherList"));
        }
    }

    
}
