<?php
class profile extends TPage{
    public function onInit($param)
    {
        if(empty($_SESSION["session_user_digi"])){
            $this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
        }
        
        $user = UserRecord::finder()->find("u_id = ?" ,$_SESSION["session_user_digi"]);
        if($user instanceof UserRecord){
            $this->User_name->Text = $user->name;
            $this->User_family->Text = $user->family;
            $this->User_phone->Text = $user->mobile;
            $this->email->Text = $user->email;   
        }
        // else{
        //     print_r($_SESSION["session_user_digi"]);
        // } 

        $this->search(null,null);
        $this->search2(null,null);
		
    }
    public function search($sender, $param){
        $this->Repeater->VirtualItemCount=$this->DataItemCount;
        $this->Repeater->CurrentPageIndex = 0;
        $this->populateData();
    }
    
    protected function getDataItemCount()
    {   
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "book_id in (select book_id from `like` where u_id=:u_id)" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
        $c = BookAuthorsRecord::finder()->count($criteria);
        return $c;
    }
    
    protected function getSearchAdditonalCondition($t1=false)
    {
        $con = "";
        $t = $t1;
        return $con;
    }
    
    protected function getData($offset,$limit){
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "book_id in (select book_id from `like` where u_id=:u_id)" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
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
    public function search2($sender, $param){
		$this->Repeater2->VirtualItemCount=$this->DataItemCount2;
		$this->Repeater2->CurrentPageIndex = 0;
		$this->populateData2();
	}
	
	protected function getDataItemCount2()
	{
		$criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "u_id= :u_id" . $this->getSearchAdditonalCondition2(true); 
        if(isset($_SESSION["session_user_digi"]))
        {
            $user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord)
                $criteria->Parameters[':u_id'] = $user->u_id;
        }
        $c = OrderRecord1::finder()->count($criteria);
        return $c;  
    }
    
	
	protected function getSearchAdditonalCondition2($t1=false)
	{
        $con = "";
        $t = $t1;

        if(strlen($this->txt_factor->Text) > 0)
        {
            $con .= (($t?" AND ":"")."( order_factor like '%". $this->txt_factor->Text ."%')");
            $t = true;
        }
		return $con;
	}
	
	protected function getData2($offset,$limit){
		$criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "u_id=:u_id" . $this->getSearchAdditonalCondition2(true); 
        if(isset($_SESSION["session_user_digi"]))
        {
            $user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord)
                $criteria->Parameters[':u_id'] = $user->u_id;
        }
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = OrderRecord1::finder()->findAll($criteria);
        return $c;  
	}
	protected function populateData2()
	{
		$offset=$this->Repeater2->CurrentPageIndex*$this->Repeater2->PageSize;
		$limit=$this->Repeater2->PageSize;
		if($offset+$limit>$this->Repeater2->VirtualItemCount)
			$limit=$this->Repeater2->VirtualItemCount-$offset;
		$data=$this->getData2($offset,$limit);
		$this->Repeater2->DataSource=$data;
		$this->Repeater2->dataBind();
    }
    
    public function pageChanged2($sender,$param)
    {
        $this->Repeater2->CurrentPageIndex=$param->NewPageIndex;
        $this->populateData2();
    }
    public function RenderCallback2($sender, $param)
    {
        $this->TActivePanel2->render($param->NewWriter);
    }


   
}
