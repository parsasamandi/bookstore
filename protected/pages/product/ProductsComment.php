<?php
class ProductsComment extends TPage{
    public function onInit($param){
        parent::onInit($param);
        $this->search(null, null);

        if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
        }else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
        
        
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
        return ProductCommentRecord::finder()->count($criteria);
    }
    
    protected function getSearchAdditionalCondition($t1=false)
    {
        $con = "";
        $t = $t1;
        if(strlen($this->txtSearchName->Text)>0)
        {
            $con .= "book_id in (select book_id from book_authors where book_id in (select book_id from books where name like '%". $this->txtSearchName->Text . "%'))";
            $t = true;
        }
        if(strlen($this->txtSearchUser->Text)>0)
        {
            $con .= "u_id in (select u_id from user where name like '%". $this->txtSearchUser->Text . "%')";
            $t = true;
        }
        if(strlen($this->txtSearchIdea->Text)>0)
        {
            $con .= "idea like '%". $this->txtSearchIdea->Text . "%'";
            $t = true;
        }
        return $con;
    }
    
    protected function getData($offset,$limit){
            
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = $this->getSearchAdditionalCondition(true); 
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = ProductCommentRecord::finder()->findAll($criteria);
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
