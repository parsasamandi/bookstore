<?php
class Products extends TPage{
	
	public function onInit($param){
		parent::onInit($param); 
        $this->search(null, null);
        $_SESSION['like'] = base64_decode($this->Request["id"]);

        if($this->Request["Search_auhtor"])
        {
            $this->search2(null,null);
        }
        if(base64_decode($this->Request["id"]))
        {
            if(empty($_SESSION["session_user_digi"])){
                $this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
            }
            $id_decode16 = base64_decode($this->Request["id"]);
            $like = LikeRecord::finder()->find("book_id = ? and u_id = ?",$id_decode16,$_SESSION['session_user_digi']);
		    if(!($like instanceof LikeRecord)){
                $like = new LikeRecord();
                $like->book_id  = $id_decode16;
                if(isset($id_decode16))
                {
                    $user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
                    if($user instanceof UserRecord)
                        $like->u_id = $user->u_id;
                }
                $like->status = 1;
                $this->pnlTrue->Visible = true;
                $like->save();	
            }
            else{
                $like = LikeRecord::finder()->find("book_id = ?",$id_decode16);
                if($like instanceOf LikeRecord)
                    $like->delete();
                
                $this->pnlTrue->Visible = false;
                $this->pnlFalse->Visible = true;
            }
        }
		
	}
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

        if(isset($this->Request["cat"]))
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where c_id like '%".$this->Request["cat"]."%'))");
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
        if(isset($this->Request["sub_cat"]))
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where sub_cat like '%".$this->Request["sub_cat"]."%'))");
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
        if(isset($this->Request["Search"]))
        {
            $con .= (($t?" AND ":"")."(
                book_id in (select book_id from books where name like '%".$this->Request["Search"]."%') or
                book_id in (select book_id from books where publisher_id in (select publisher_id from publisher where publisher_name like '%".$this->Request["Search"]."%')) or
                book_id in (select book_id from book_translator where translator_id in (select translator_id from translator where name like '%".$this->Request["Search"]."%')) or
                book_id in (select book_id from books where price = '".$this->Request["Search"]."'))");
            
            if(BookAuthorsRecord::finder()->count($con) < 0)
            {
                echo "hello";
            }
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
        if(isset($this->Request["Search_name"]))
        {
            // $name= $this->Request["Search_name"];
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where name like '%".$this->Request["Search_name"]."%'))") ;
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
        if(isset($this->Request["Search_author"]))
        {
            $con .= (($t?" AND ":"")."(author_id in (select author_id from authors where name like '%".$this->Request["Search_author"]."%'))") ;
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
    
        if(isset($this->Request["Search_translator"]))
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from book_translator where translator_id in (select translator_id from translator where name like '%".$this->Request["Search_translator"]."%')))") ;
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
        if(isset($this->Request["Search_publisher"]))
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where publisher_id in (select publisher_id from publisher where publisher_name like '%".$this->Request["Search_publisher"]."%')))") ;
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
        if(isset($this->Request["Search_price"]))
        {
            $con .= (($t?" AND ":"")."(book_id in (select book_id from books where price = ".$this->Request["Search_price"].")  ") ;
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
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
    
    public function search2($sender, $param){
		$this->Repeater2->VirtualItemCount=$this->DataItemCount2;
		$this->Repeater2->CurrentPageIndex = 0;
		$this->populateData2();
    }
    
    protected function getDataItemCount2()
	{
		$criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "_del=:_del" . $this->getSearchAdditonalCondition2(true); 
        $criteria->Parameters[':_del'] = 0;
        $c = BookAuthorsRecord::finder()->count($criteria);
        return $c;  
    }
    
	protected function getSearchAdditonalCondition2($t1=false)
	{
        $con = "";
        $t = $t1;

        if(isset($this->Request["Search_author"]))
        {
            $con .= (($t?" AND ":"")."(author like '%".$this->Request["Search_auhtor"]."%')");
            $this->pnl2->Visible = false;
            $this->pnl3->Visible = true;
            $this->pnlFalse->Visible = false;
            $t = true;
        }
		return $con;
	}
	
	protected function getData2($offset,$limit){
		$criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "_del=:_del" . $this->getSearchAdditonalCondition2(true); 
        $criteria->Parameters[':_del'] = 0;
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = AuthorsRecord::finder()->findAll($criteria);
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
