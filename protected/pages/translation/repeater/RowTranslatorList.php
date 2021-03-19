<?php
class RowTranslatorList extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("translation.NewTranslator", array("id"=>$id_encode64)));
    }

    public function deleteMe($param,$sender){
        $id_encode64 =  $this->id->Value;
        // array("id"=>$id_encode64)
        $translator = TranslatorRecord::finder()->find("translator_id = ?" , $id_encode64);
        if($translator instanceof TranslatorRecord){
            //0=not set/ 1 =delete
            $translator->_del = 1;
            $translator->save();
            $this->Response->redirect($this->service->constructUrl("translator.TranslatorList"));
        }
    }

    
}
