<?php
class OrdersList extends TPage{
	
	public function onInit($param){
        parent::onInit($param);
        if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
		
		$this->search(null, null);
	}
	//////////////////////// Reprater ///////////////////////////////
	public function search($sender, $param){
        $this->Repeater->VirtualItemCount=$this->DataItemCount;
        $this->Repeater->CurrentPageIndex = 0;
        $this->populateData();
    }
    
    protected function getDataItemCount()
    {   
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = $this->getSearchAdditionalCondition(true);
        return OrderRecord1::finder()->count($criteria);
    }
    
    protected function getSearchAdditionalCondition($t1=false)
    {
        $con = "";
        $t = $t1;
        if(strlen($this->txtSearchTransportation->Text) >0)
        {
            $con .= "transportation like '%".$this->txtSearchTransportation->Text."%' ";
            $t = true;
        }
        if(strlen($this->txtPayment->Text) >0)
        {
            $con .= "payment like '%".$this->txtPayment->Text."%' ";
            $t = true;
        }
        if(strlen($this->final_price->Text) >0)
        {
            $con .= "totalprice like '%".$this->final_price->Text."%'";
            $t = true;
        }
        if(strlen($this->factor->Text) >0)
        {
            $con .= "order_factor like '%".$this->factor->Text."%' ";
            $t = true;
        }
        return $con;
    }
    
    protected function getData($offset,$limit){
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = $this->getSearchAdditionalCondition(true);
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = OrderRecord1::finder()->findAll($criteria);
        return $c;   
    }
    protected function populateData()
    {
        $offset=$this->Repeater->CurrentPageIndex*$this->Repeater->PageSize;
        $limit=$this->Repeater->PageSize;
        if($offset+$limit>$this->Repeater->VirtualItemCount)
            $limit=$this->Repeater->VirtualItemCount-$offset;
        $data=$this->getData($offset,$limit);
        $this->Repeater->DataSource=$data;
        $this->Repeater->dataBind();
    }
    
    public function pageChanged($sender,$param)
    {
        $this->Repeater->CurrentPageIndex=$param->NewPageIndex;
        $this->populateData();
	}
	

}