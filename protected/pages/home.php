<?php
class home extends TPage{
    public function onInit($param)
    {
        parent::onInit($param);
        $str_menu = "";
        $cats = CatRecord::finder()->findAll("status = ? order by c_id desc",1);
        foreach($cats as $cat)
        {
            $subcats_count = SubCatRecord::finder()->count("status = 1 and c_id = ?",$cat->c_id);
            if($subcats_count == 0)
            {
                $cat_url = $this->Service->constructUrl("product.Products", array("cat"=>$cat->c_id));
                $str_menu .= '<a href="'.$cat_url.'"> '.$cat->name.' </a>';
            }   
            else{
                $subcats = SubCatRecord::finder()->findALL("status = 1 and c_id = ?",$cat->c_id);
                $subcats_count = SubCatRecord::finder()->count("status = 1 and c_id = ?",$cat->c_id);
                if($subcats_count > 0)
                {
                    $str_menu .='
                        <div class="dropdown1">
                            <button style="font-family:BYekan" class="dropbtn1">
                                '.$cat->name.'
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">';
                    foreach($subcats as $subcat)
                    {
                        $subCat_url = $this->Service->constructUrl("product.Products", array("sub_cat"=>$subcat->sc_id));
                        $str_menu .= '<a href="'.$subCat_url.'" >'.$subcat->name.'</a>';
                    }
                    $str_menu .= '</div>
                        </div> ';  
                }  
            }
        }
        $this->lit_header->text = $str_menu;
        
        // $home_setting20 = HomeSettingRecord::finder()->find("name = ?","ShopBox");
		// if($home_setting20 instanceof HomeSettingRecord)
		// {
		// 	$this->Shop->Text = $home_setting20->value;
        // }

        // $home_setting21 = HomeSettingRecord::finder()->find("name = ?","ShopBox2");
		// if($home_setting21 instanceof HomeSettingRecord)
		// {
		// 	$this->ShopBox2->Text = $home_setting21->value;
        // }

        // $home_setting22 = HomeSettingRecord::finder()->find("name = ?","ShopBox3");
		// if($home_setting22 instanceof HomeSettingRecord)
		// {
		// 	$this->ShopBox3->Text = $home_setting22->value;
        // }

        // $home_setting23 = HomeSettingRecord::finder()->find("name = ?","ShopBox_desc");
		// if($home_setting23 instanceof HomeSettingRecord)
		// {
		// 	$this->ShopBox_desc->Text = $home_setting23->value;
        // }

        // $home_setting24 = HomeSettingRecord::finder()->find("name = ?","ShopBox2_desc");
		// if($home_setting24 instanceof HomeSettingRecord)
		// {
		// 	$this->ShopBox2_desc->Text = $home_setting24->value;
        // }

        // $home_setting25 = HomeSettingRecord::finder()->find("name = ?","ShopBox3_desc");
		// if($home_setting25 instanceof HomeSettingRecord)
		// {
		// 	$this->ShopBox3_desc->Text = $home_setting25->value;
        // }
        
        $home_setting5 = HomeSettingRecord::finder()->find("name = ?","footer_about");
		if($home_setting5 instanceof HomeSettingRecord)
		{
			$this->lit_footer_about->Text = $home_setting5->value;
        }
        
        $home_setting10 = HomeSettingRecord::finder()->find("name = ?","slider1_footer");
		if($home_setting10 instanceof HomeSettingRecord)
		{
			$this->lit_footer_desc->Text = $home_setting10->value;
		}   

        $home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider3_img");
		if($home_setting2 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img->Text = $home_setting2->value;
        }

        $home_setting3 = HomeSettingRecord::finder()->find("name = ?","slider4_img");
		if($home_setting3 instanceof HomeSettingRecord)
		{
			$this->lit_slider2_img->Text = $home_setting3->value;
        }
        $home_setting8 = HomeSettingRecord::finder()->find("name = ?","slider1shop_title");
		if($home_setting8 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_title->Text = $home_setting8->value;
        }
        $home_setting6 = HomeSettingRecord::finder()->find("name = ?","slider1shop_desc");
		if($home_setting6 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_desc->Text = $home_setting6->value;
        }
        $home_setting10 = HomeSettingRecord::finder()->find("name = ?","people_idea");
		if($home_setting10 instanceof HomeSettingRecord)
		{
			$this->lit_people_idea->Text = $home_setting10->value;
        }

        $home_setting11 = HomeSettingRecord::finder()->find("name = ?","slider8_img");
		if($home_setting11 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img2->Text = $home_setting11->value;
        }
        
        $home_setting12 = HomeSettingRecord::finder()->find("name = ?","slider9_img");
		if($home_setting12 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img3->Text = $home_setting12->value;
        }

        $logOut_item = "";
        $register_item = "";
        $footer_item = "";
        $footer_item2 = "";
        $footer_item3 = "";
        $profile = "";
        if(!empty($_SESSION['session_user_digi']))
        {
            $LogOutUrl = $this->Service->constructUrl("login.logout");
            $logOut_item .= '<a id="nav_style" href="'.$LogOutUrl.'" class="active">
                                <i style="font-size:15px;margin-top:0.19em" class="fa fa-sign-out" ></i>
                                خروج
                            </a>';

            $addressListUrl = $this->Service->constructUrl("package.ListOfAddress");
            $footer_item .= '<a style="direction:rtl;font-family:BYekan;text-align:right"
                                href="'.$addressListUrl.'">
                                <span class="fa fa-chevron-left mr-2"></span>
                                لیست آدرس ها
                            </a>';
            $newAddressUrl = $this->Service->constructUrl("package.NewAddress");
            $footer_item2 .= '<a style="direction:rtl;font-family:BYekan;text-align:right"
                                href="'.$newAddressUrl.'">
                                <span class="fa fa-chevron-left mr-2"></span>
                                افزودن آدرس جدید
                              </a>';
            $commentListUrl = $this->Service->constructUrl("comment.UserCommentList");
            $footer_item3 .= '<a style="direction:rtl;font-family:BYekan;text-align:right"
                                href="'.$commentListUrl.'">
                                <span class="fa fa-chevron-left mr-2"></span>
                                لیست نظرات
                              </a>';

            $profile_url = $this->Service->constructUrl("profile");
            $profile .= '<a href="'.$profile_url.'" class="nav_style active">
                            <i style="font-size:15px;margin-top:0.19em" class="fa fa-user" ></i>
                        </a>';
            $this->profile_theme->Text = $profile;
            $this->AddressList->Text = $footer_item;
            $this->NewAddress->Text = $footer_item2;
            $this->CommentList->Text = $footer_item3;
            $this->login_theme->Text = $logOut_item;
        }
        else{
            $LogOutUrl = $this->Service->constructUrl("login.login");
            $logOut_item .= '<a href="'.$LogOutUrl.'" class="nav_style active">
                                <i style="font-size:15px;margin-top:0.19em" class="fa fa-sign-in" ></i>
                                ورود
                            </a>';
            $this->login_theme->Text = $logOut_item;

            $registerUrl = $this->Service->constructUrl("users.NewUser");
            $register_item .= '<a  id="nav_style" href="'.$registerUrl.'" class="active">
                                <i style="font-size:15px;margin-top:0.19em" class="fa fa-sign-in" ></i>
                                ثبت نام
                              </a>';
            $this->register->Text = $register_item;
        }

        $this->search(null,null);
        $this->search2(null,null);
        $this->search5(null,null);
        $this->search6(null,null);
        $this->search3(null,null);
        $this->search7(null,null);
        // $this->search4(null,null);
        $this->TActivePanel2->Visible = true;
    }
    public function search($sender, $param){ 
        $this->Repeater->VirtualItemCount=$this->DataItemCount;
        $this->Repeater->CurrentPageIndex = 0;
        $this->populateData();
        $this->TActivePanel2->Visible = false;
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
        $criteria->Condition = "_del= :_del order by book_id desc LIMIT 2" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':_del'] = 0;
        return BookAuthorsRecord::finder()->count($criteria);
	}
	
	protected function getSearchAdditonalCondition2($t1=false)
	{
        $con = "";
         if(strlen($this->txtSearchName->Text)>0)
        {
            $con .= (($t?" AND ":"")."(name like '%". $this->txtSearchName->Text . "%')");
            $t = true;
        }
		return $con;
	}
	
	protected function getData2($offset,$limit){
			
		$criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del order by book_id desc LIMIT 8" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':_del'] = 0;
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = BookAuthorsRecord::finder()->findAll($criteria);
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
    public function search3($sender, $param){
		$this->Repeater3->VirtualItemCount=$this->DataItemCount3;
		$this->Repeater3->CurrentPageIndex = 0;
		$this->populateData3();
	}
	
	protected function getDataItemCount3()
	{
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "status= :status" . $this->getSearchAdditonalCondition3(true); 
        $criteria->Parameters[':status'] = 1;
		return CatRecord::finder()->count($criteria);
	}
	
	protected function getSearchAdditonalCondition3($t1=false)
	{
		$con = "";
		return $con;
	}
	
	protected function getData3($offset,$limit){
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "status= :status" . $this->getSearchAdditonalCondition3(true); 
        $criteria->Parameters[':status'] = 1;
        $criteria->Limit = $limit;
		$criteria->Offset = $offset;
        $c = CatRecord::finder()->findAll($criteria);
		return $c; 
	}
	protected function populateData3()
	{
		$offset=$this->Repeater3->CurrentPageIndex*$this->Repeater3->PageSize;
		$limit=$this->Repeater3->PageSize;
		if($offset+$limit>$this->Repeater3->VirtualItemCount)
			$limit=$this->Repeater3->VirtualItemCount-$offset;
		$data=$this->getData3($offset,$limit);
		$this->Repeater3->DataSource=$data;
		$this->Repeater3->dataBind();
    }
    public function search4($sender, $param){
		$this->Repeater4->VirtualItemCount=$this->DataItemCount4;
		$this->Repeater4->CurrentPageIndex = 0;
		$this->populateData4();
	}
	
	protected function getDataItemCount4()
	{
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del" . $this->getSearchAdditonalCondition4(true); 
        $criteria->Parameters[':_del'] = 0;
        return BooksRecord::finder()->count($criteria);
	}
	
	protected function getSearchAdditonalCondition4($t1=false)
	{
		$con = "";
		return $con;
	}
	
	protected function getData4($offset,$limit){
			
		$criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del" . $this->getSearchAdditonalCondition4(true); 
        $criteria->Parameters[':_del'] = 0;
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = BooksRecord::finder()->findAll($criteria);
        return $c;
    }
    protected function populateData4()
	{
		$offset=$this->Repeater4->CurrentPageIndex*$this->Repeater4->PageSize;
		$limit=$this->Repeater4->PageSize;
		if($offset+$limit>$this->Repeater4->VirtualItemCount)
			$limit=$this->Repeater4->VirtualItemCount-$offset;
		$data=$this->getData4($offset,$limit);
		$this->Repeater4->DataSource=$data;
		$this->Repeater4->dataBind();
	
    }
    
    public function search5($sender, $param){
		$this->Repeater5->VirtualItemCount=$this->DataItemCount5;
		$this->Repeater5->CurrentPageIndex = 0;
		$this->populateData5();
	}
	
	protected function getDataItemCount5()
	{
		$criteria = new TActiveRecordCriteria;
		return QuoteRecord::finder()->count($criteria);
	}
	
	protected function getData5($offset,$limit){
			
		$criteria = new TActiveRecordCriteria;
		$criteria->Limit = $limit;
		$criteria->Offset = $offset;
		$c = QuoteRecord::finder()->findAll($criteria);
		return $c;
	}
	protected function populateData5()
	{
		$offset=$this->Repeater5->CurrentPageIndex*$this->Repeater5->PageSize;
		$limit=$this->Repeater5->PageSize;
		if($offset+$limit>$this->Repeater5->VirtualItemCount)
			$limit=$this->Repeater5->VirtualItemCount-$offset;
		$data=$this->getData5($offset,$limit);
		$this->Repeater5->DataSource=$data;
		$this->Repeater5->dataBind();
    }

    public function search_product($sender, $param){
        if($this->SearchText->Text != null and $this->txt_Search->SelectedValue == 0)
        {
            $this->Response->redirect($this->Service->constructUrl("product.Products", array("Search_name"=>$this->SearchText->text)));
        }
        if($this->SearchText->Text != null and $this->txt_Search->SelectedValue == 1)
        {
            $this->Response->redirect($this->Service->constructUrl("product.Products", array("Search_author"=>$this->SearchText->text)));
        }
        if($this->SearchText->Text != null and $this->txt_Search->SelectedValue == 2)
        {
            $this->Response->redirect($this->Service->constructUrl("product.Products", array("Search_translator"=>$this->SearchText->text)));
        }
        if($this->SearchText->Text != null and $this->txt_Search->SelectedValue == 3)
        {
            $this->Response->redirect($this->Service->constructUrl("product.Products", array("Search_publisher"=>$this->SearchText->text)));
        }
        if($this->SearchText->Text != null and $this->txt_Search->SelectedValue == 4)
        {
            $this->Response->redirect($this->Service->constructUrl("product.Products", array("Search_price"=>$this->SearchText->text)));
        }
        if($this->SearchText->Text != null and $this->txt_Search->SelectedValue == -1)
        {
            $this->Response->redirect($this->Service->constructUrl("product.Products", array("Search"=>$this->SearchText->text)));
        }
    }

    public function search6($sender, $param){
		$this->Repeater6->VirtualItemCount=$this->DataItemCount6;
		$this->Repeater6->CurrentPageIndex = 0;
        $this->populateData6();

	}
	
	protected function getDataItemCount6()
	{
		$criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del and c_id in (select c_id from jazire_ketab.`cat` where c_id=:c_id)" . $this->getSearchAdditonalCondition6(true); 
        // $criteria->Parameters[':cat'] = 1;
        $criteria->Parameters[':_del'] = 0;
        $criteria->Parameters[':c_id'] = 2;
        // $criteria->Parameters[':name'] = 'لوازم کوهنوردی';
        return BooksRecord::finder()->count($criteria);
	}
	
	protected function getSearchAdditonalCondition6($t1=false)
	{
        $con = "";
		return $con;
	}
	
	protected function getData6($offset,$limit){
			
		$criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del and c_id in (select c_id from jazire_ketab.`cat` where c_id=:c_id)" . $this->getSearchAdditonalCondition6(true); 
        $criteria->Parameters[':_del'] = 0;
        $criteria->Parameters[':c_id'] = 2;
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = BooksRecord::finder()->findAll($criteria);
        return $c;
	}
	protected function populateData6()
	{
		$offset=$this->Repeater6->CurrentPageIndex*$this->Repeater6->PageSize;
		$limit=$this->Repeater6->PageSize;
		if($offset+$limit>$this->Repeater6->VirtualItemCount)
			$limit=$this->Repeater6->VirtualItemCount-$offset;
		$data=$this->getData6($offset,$limit);
		$this->Repeater6->DataSource=$data;
		$this->Repeater6->dataBind();
    }
    public function pageChanged6($sender,$param)
    {
        $this->Repeater6->CurrentPageIndex=$param->NewPageIndex;
        $this->populateData6();
    }
    public function search7($sender, $param){
		$this->Repeater7->VirtualItemCount=$this->DataItemCount7;
		$this->Repeater7->CurrentPageIndex = 0;
        $this->populateData7();
	}
	
	protected function getDataItemCount7()
	{
        $home_setting33 = HomeSettingRecord::finder()->find("name = ?","book_description");
		if($home_setting33 instanceof HomeSettingRecord)
		{
			$name = $home_setting33->value;
        }

        $home_setting34 = HomeSettingRecord::finder()->find("name = ?","book_description2");
		if($home_setting34 instanceof HomeSettingRecord)
		{
			$name2 = $home_setting34->value;
        }
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "name in ('$name','$name2')" . $this->getSearchAdditonalCondition7(true); 
        return BooksRecord::finder()->count($criteria);
	}
	
	protected function getSearchAdditonalCondition7($t1=false)
	{
        $con = "";
		return $con;
	}

	protected function getData7($offset,$limit){
        $home_setting33 = HomeSettingRecord::finder()->find("name = ?","book_description");
		if($home_setting33 instanceof HomeSettingRecord)
		{
			$name = $home_setting33->value;
        }

        $home_setting34 = HomeSettingRecord::finder()->find("name = ?","book_description2");
		if($home_setting34 instanceof HomeSettingRecord)
		{
			$name2 = $home_setting34->value;
        }
		$criteria = new TActiveRecordCriteria;
        $criteria->Condition = "name in ('$name','$name2')" . $this->getSearchAdditonalCondition7(true); 
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = BooksRecord::finder()->findAll($criteria);
        return $c;
    }

	protected function populateData7()
	{
		$offset=$this->Repeater7->CurrentPageIndex*$this->Repeater7->PageSize;
		$limit=$this->Repeater7->PageSize;
		if($offset+$limit>$this->Repeater7->VirtualItemCount)
			$limit=$this->Repeater7->VirtualItemCount-$offset;
		$data=$this->getData7($offset,$limit);
		$this->Repeater7->DataSource=$data;
		$this->Repeater7->dataBind();
    }
    public function pageChanged7($sender,$param)
    {
        $this->Repeater7->CurrentPageIndex=$param->NewPageIndex;
        $this->populateData7();
    }


}


