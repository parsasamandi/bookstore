<?php
class RowQuotes extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("quote.NewQuote", array("id"=>$id_encode64)));
    }

    public function deleteMe($param,$sender){
        $id_encode64 =  $this->id->Value;
        $quote = QuoteRecord::finder()->find("quote_id = ?" , $id_encode64);
        if($quote instanceof QuoteRecord){
            $quote->delete();
            // $quote->save();
            $this->Response->redirect($this->service->constructUrl("quote.QuoteList"));
        }
    }

    
}
