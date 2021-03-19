<?php
class ProductsList extends TPage{
    public function onInit($param){
        parent::onInit($param);
        $this->search(null, null);

        if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
        
        $dataCat = array();
        $i = 1;
        $dataCat[] = array("تعیین نشده",0);
        $cats = CatRecord::finder()->findAll("status = ?",1);
        foreach($cats as $cat){
            $dataCat[] = array($cat->name,$cat->c_id);
        }

        $this->dropCat->DataSource = $dataCat;
        $this->dropCat->dataBind();
        
        $dataSubCat = array();
        $i = 1;
        $dataSubCat[] = array("تعیین نشده",0);
        $subCats = SubCatRecord::finder()->findAll("c_id = ?",13);
        foreach($subCats as $subcat){
            $dataSubCat[] = array($subcat->name,$subcat->sc_id);
        }
        $this->dropSubCat->DataSource = $dataSubCat;
        $this->dropSubCat->dataBind();
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
        $criteria->Condition = "_del= :_del" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':_del'] = 0;
        return BookAuthorsRecord::finder()->count($criteria);
    }
    
    protected function getSearchAdditonalCondition($t1=false)
    {
        $con = "";
        $t = $t1;
        if(strlen($this->txtSearchName->Text)>0)
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where name like '%". $this->txtSearchName->Text . "%'))");
            $t = true;
        }
        if(strlen($this->txtSearchPrice->Text)>0)
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where price like '%". $this->txtSearchPrice->Text . "%'))");
            $t = true;
        }
        if(strlen($this->txtSearchAuthor->Text)>0)
        {
            $con .= (($t?" AND ":"")."(author_id in (select author_id from authors where name like '%". $this->txtSearchAuthor->Text . "%'))");
            $t = true;
        }
        if(strlen($this->txtSearchPublisher->Text)>0)
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where publisher_id in (select publisher_id from publisher where publisher_name like '%". $this->txtSearchPrice->Text . "%')))");
            $t = true;
        }
        if(($this->dropStatus->SelectedValue) != 0)
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where status = ".$this->dropStatus->SelectedValue."))");
            $t = true;
        }
        if(($this->dropCat->SelectedValue) != 0)
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where cat = ".$this->dropCat->SelectedValue."))");
            $t = true;
        }
        if(($this->dropSubCat->SelectedValue) != 0)
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where sub_cat = ".$this->dropSubCat->SelectedValue."))");
            $t = true;
        }
        return $con;
    }
    
    protected function getData($offset,$limit){
            
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':_del'] = 0;
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = BookAuthorsRecord::finder()->findAll($criteria);
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
