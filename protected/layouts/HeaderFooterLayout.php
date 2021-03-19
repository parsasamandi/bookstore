<?php
class HeaderFooterLayout extends TTemplateControl
{
	public function onInit($param){
        parent::onInit($param);
        // $this->search3(null,null);   
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
                            <button style="font-family:BYekan" class="dropbtn1">'.$cat->name.'
                                <i class="fa fa-caret-down"></i>
                            </button>
                            <div class="dropdown-content">';
                    foreach($subcats as $subcat)
                    {
                        $subCat_url = $this->Service->constructUrl("product.Products", array("sub_cat"=>$subcat->sc_id));
                        $str_menu .= '<a  href="'.$subCat_url.'" >'.$subcat->name.'</a>';
                    }
                    $str_menu .= '</div>
                        </div> ';  
                }  
            }
        }


        $register_item = "";
        $logOut_item = "";
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
            $register_item .= '<a id="nav_style" href="'.$registerUrl.'" class="active">
                                <i style="font-size:15px;margin-top:0.19em" class="fa fa-sign-in" ></i>
                                ثبت نام
                              </a>';
            $this->register->Text = $register_item;
        }


        $this->lit_header->text = $str_menu;

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
    }
	// public function search3($sender, $param){
	// 	$this->Repeater3->VirtualItemCount=$this->DataItemCount3;
	// 	$this->Repeater3->CurrentPageIndex = 0;
	// 	$this->populateData3();
	// }
	
	// protected function getDataItemCount3()
	// {
    //     $criteria = new TActiveRecordCriteria;
    //     $criteria->Condition = "u_id= :u_id and order_factor= :order_factor" . $this->getSearchAdditonalCondition3(true); 
    //     $criteria->Parameters[':u_id'] = $_SESSION['session_user_digi'];
    //     $criteria->Parameters[':order_factor'] = '0';
	// 	return CartRecord::finder()->count($criteria);
	// }
	
	// protected function getSearchAdditonalCondition3($t1=false)
	// {
	// 	$con = "";
	// 	return $con;
	// }
	
	// protected function getData3($offset,$limit){
    //     $criteria = new TActiveRecordCriteria; 
    //     $criteria->Condition = "u_id=:u_id and order_factor=:order_factor" . $this->getSearchAdditonalCondition3(true); 
    //     if(isset($_SESSION["session_user_digi"]))
    //     {
    //         $user =  UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
    //         if($user instanceof UserRecord)
    //             $criteria->Parameters[':u_id'] = $user->u_id;
	// 	}
    //     $criteria->Parameters[':order_factor'] = '0';
    //     $criteria->Limit = $limit;
	// 	$criteria->Offset = $offset;
	// 	$_SESSION['cart_number'] = CartRecord::finder()->count($criteria);
    //     $c = CartRecord::finder()->findAll($criteria);
	// 	return $c; 
	// }
	// protected function populateData3()
	// {
	// 	$offset=$this->Repeater3->CurrentPageIndex*$this->Repeater3->PageSize;
	// 	$limit=$this->Repeater3->PageSize;
	// 	if($offset+$limit>$this->Repeater3->VirtualItemCount)
	// 		$limit=$this->Repeater3->VirtualItemCount-$offset;
	// 	$data=$this->getData3($offset,$limit);
	// 	$this->Repeater3->DataSource=$data;
	// 	$this->Repeater3->dataBind();
    // }
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
	
}
