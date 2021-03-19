<?php
class UserCommentList extends TPage{
    public function onInit($param)
    {
        // $home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider8_img");
		// if($home_setting2 instanceof HomeSettingRecord)
		// {
		// 	$this->lit_slider1_img->Text = $home_setting2->value;
        // }
      

        if(isset($_SESSION["session_user_digi"])){
            $user = UserRecord::finder()->find("u_id = ?" ,$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord){
                $this->User_name->Text = $user->name;
                $this->User_family->Text = $user->family;
                $this->User_phone->Text = $user->mobile;
                $this->email->Text = $user->email; 
            }
            else{
                print_r($_SESSION["session_user_digi"]);
            } 
        }
        else{
			$this->Response->redirect($this->Service->constructUrl("login.login"));

        }

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
        $criteria->Condition = "book_id in (select book_id from `like` where u_id=:u_id)";
        $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
        $c = BooksRecord::finder()->count($criteria);
        return $c;
    }
    
    
    protected function getData($offset,$limit){
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "book_id in (select book_id from `like` where u_id=:u_id)";
        $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = BooksRecord::finder()->findAll($criteria);
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
        $criteria->Condition = "u_id=:u_id" . $this->getSearchAdditonalCondition2(true); 
        $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
        $c = CommentRecord::finder()->count($criteria);
        return $c;
        
	}   
	
	
	protected function getData2($offset,$limit){
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "u_id=:u_id";
        $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = CommentRecord::finder()->findAll($criteria);
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

