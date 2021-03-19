<?php
class SubCatList extends TPage{
public function onInit($param){
        parent::onInit($param);
        //Check Access of user for this page from LimitationRecord DataBase Table.
		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
		// End of Check Access of user for this page from LimitationRecord DataBase Table.
        $this->search(null,null);
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
        $criteria->Condition = "" . $this->getSearchAdditonalCondition(true); 
        return SubCatRecord::finder()->count($criteria);
    }
    
    protected function getSearchAdditonalCondition($t1=false)
    {
        $con = "";
        $t = $t1;
        if(strlen($this->sub_name->Text) > 0)
        {
            $con .= "(name like '%". $this->sub_name->Text . "%')";
            $t = true;
        }
        return $con;
    }
    
    protected function getData($offset,$limit){
            
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "" . $this->getSearchAdditonalCondition(true); 
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = SubCatRecord::finder()->findAll($criteria);
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
    public function RenderCallback($sender, $param)
    {
        $this->TActivePanel->render($param->NewWriter);
    }
}