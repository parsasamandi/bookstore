<?php
class EachProduct extends TPage{
	public function onInit($param){
		parent::onInit($param); 
		$this->search(null,null);

		$comment_url = $this->Service->constructUrl("product.NewComment", array("id"=>$this->Request["id"]));
		$this->NewComment->Text = '<a href="'.$comment_url.'"
										style="font-family:DiodrumArabicBold;background-color:#FFD700" class="btn btn-warning d-block">
										ثبت نظر
										<span class="fa fa-long-arrow-right"></span>
									 </a>';	 

		$home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider5_img");
		if($home_setting2 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img->Text = $home_setting2->value;
		}
		$like = LikeRecord::finder()->find("book_id = ? and status = ?" ,base64_decode($this->Request["id"]),1);
		if($like instanceOf LikeRecord)
		{
			$count = LikeRecord::finder()->count("book_id = ? and status = ?" ,base64_decode($this->Request["id"]),1);
			if($count == 0)
			{
				$this->like->Text = 'test';
			}
			else{
				// $this->like->Text = $count;
			}
		}

		$bookAuthors = BookAuthorsRecord::finder()->find("book_id = ?" , base64_decode($this->Request["id"]));
		if($bookAuthors instanceof BookAuthorsRecord){
			$book = BooksRecord::finder()->find("book_id = ?" ,$bookAuthors->book_id);
			if($book instanceof BooksRecord)
			{
				$this->productName->Text = $book->name;
				$this->productName2->Text = $book->name;
				$this->productName3->Text = $book->name;
				$this->lit_cover->Text = $book->cover;
				$this->goodreads_rating->Text = $book->goodreads_rating;
				$this->shabak->Text = $book->shabak;
				$this->page->Text = $book->page;
				$this->cover->Text = $book->cover;
				$this->language->Text = $book->language;

				if($book->price != 0)
				{
					$this->lit_price->Text = number_format($book->price);
					$this->lit_price2->Text = number_format($book->price);
				}else{
					$this->lit_price->Text = "تماس بگیرید";
				} 
				if($book->desc != null)
				{
					$this->lit_desc->Text = $book->desc;
					// $this->desc2->Text = $book->desc;
				}
				else{
					$this->lit_desc->Text = "توضیحاتی برای این محصول وجود ندارد";
					// $this->desc2->Text = "توضیحاتی برای این محصول وجود ندارد";
				}
				if($book->pic_path != null)
				{
					$this->lit_image->Text = $book->pic_path; 
				}
				else{
					$this->lit_image1->Text = "عکسی برای نمایش وجود ندارد";
				}
				if($book->pic_path1 != null)
				{
					$this->lit_image3->Text = $book->pic_path1; 
				}
				else{
					$this->lit_image4->Text = "عکسی برای نمایش وجود ندارد";
				}
				if($book->pic_path2 != null)
				{
					$this->lit_image5->Text = $book->pic_path2; 
				}
				else{
					$this->lit_image6->Text = "عکسی برای نمایش وجود ندارد";
				}
				if($book->pic_path3 != null)
				{
					$this->lit_image7->Text = $book->pic_path3; 
				}
				else{
					$this->lit_image8->Text = "عکسی برای نمایش وجود ندارد";
				}
				if($book->pic_path4 != null)
				{
					$this->lit_image9->Text = $book->pic_path4; 
				}
				else{
					$this->lit_image10->Text = "عکسی برای نمایش وجود ندارد";
				}

				$cat = CatRecord::finder()->find("c_id = ?" ,$book->c_id);
				if($cat instanceof CatRecord)
					$this->lit_cat->Text = $cat->name;
					$this->cat->Text = $cat->name;
			
				$publisher = PublisherRecord::finder()->find("publisher_id = ?" ,$book->publisher_id);
				if($publisher instanceof PublisherRecord)
					$this->lit_publisher->Text = $publisher->publisher_name;	

			}
			$author = AuthorsRecord::finder()->find("author_id = ?",$bookAuthors->author_id);
				if($author instanceof AuthorsRecord)
					$this->lit_author->Text = $author->name;

			
			// $this->lit_num->Text = $pro->pro_num;
			// $this->lit_model->Text = $pro->model;
			
		}
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
		$criteria->Condition = "status=:status and book_id=:book_id" . $this->getSearchAdditonalCondition(true);
		$criteria->Parameters[':status'] = 1;
		$criteria->Parameters[':book_id'] = base64_decode($this->Request["id"]);
        return ProductCommentRecord::finder()->count($criteria);

	}
	
	protected function getSearchAdditonalCondition($t1=false)
	{
		$con = "";
		$t = $t1;
		return $con;
	}
	
	protected function getData($offset,$limit){
			
		$criteria = new TActiveRecordCriteria;
		$criteria->Condition = "status=:status and book_id=:book_id" . $this->getSearchAdditonalCondition(true);
		$criteria->Parameters[':status'] = 1;
		$criteria->Parameters[':book_id'] = base64_decode($this->Request["id"]);
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
	public function addCart($sender, $param){ 
		if(empty($_SESSION["session_user_digi"]))
		{
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
			$_SESSION['seesion_p'] = base64_decode($this->Request["id"]);
		}
		else{
			$cart = new CartRecord();
			$book = BooksRecord::finder()->find("book_id = ?" ,base64_decode($this->Request["id"]));
			if($book instanceof BooksRecord){
				$cart->book_id = $book->book_id;	
			}
			if(isset($_SESSION["session_user_digi"]))
			{
				$user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
				if($user instanceof UserRecord)
					$cart->u_id = $user->u_id;
			}
			$persian = ['۰', '۱', '۲', '۳', '۴', '٤', '۵', '٥', '٦', '۶', '۷', '۸', '۹'];
			$english = [ 0 ,  1 ,  2 ,  3 ,  4 ,  4 ,  5 ,  5 ,  6 ,  6 ,  7 ,  8 ,  9 ];
			$cart->count = str_replace($persian, $english, $this->txtCount->Text);
			$cart->save();
			$this->pnlAfterAdd->Visible=true;	
		}
	}
}
