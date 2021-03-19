<?php
class NewProduct extends TPage{
public function onInit($param){
		parent::onInit($param);

		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
 
		$dataCat = array();
		$i = 1;
		$cats = CatRecord::finder()->findAll("status = ?",1);
		foreach($cats as $cat){
			$dataCat[] = array($cat->name,$cat->c_id);
		}
		$this->dropCat->DataSource = $dataCat;
		$this->dropCat->dataBind();
		
		$dataSubCat = array();
		$i = 1;
		$subCats = SubCatRecord::finder()->findAll("status = ?",1);
		foreach($subCats as $subcat){
			$dataSubCat[] = array($subcat->name,$subcat->sc_id);
		}
		$this->dropSubCat->DataSource = $dataSubCat;
		$this->dropSubCat->dataBind();

		
		$dataPublisher = array();
		$i = 1;
		$publish = PublisherRecord::finder()->findAll("_del = ?",0);
		foreach($publish as $publisher){
			$dataPublisher[] = array($publisher->publisher_name,$publisher->publisher_id);
		}
		$this->dataPublisher->DataSource = $dataPublisher;
		$this->dataPublisher->dataBind();


		$dataAuthor = array();
		$i = 1;
		$authors = AuthorsRecord::finder()->findAll("_del = ?",0);
		foreach($authors as $author){
			$dataAuthor[] = array($author->name,$author->author_id);
		}
		$this->dataAuthor->DataSource = $dataAuthor;
		$this->dataAuthor->dataBind();

		$dataTranslator = array();
		$i = 1;
		$translators = TranslatorRecord::finder()->findAll("_del = ?",0);
		foreach($translators as $translator){
			$dataTranslator[] = array($translator->name,$translator->translator_id);
		}
		$this->dataTranslator->DataSource = $dataTranslator;
		$this->dataTranslator->dataBind();
		
		
		$this->pnlAfterAdd->Visible=false;
		$this->pnlAfterAddTop->Visible=false;
		$id_decode = base64_decode($this->Request["id"]);
		$pro = BooksRecord::finder()->find("book_id = ?",$id_decode);
		if($pro instanceof BooksRecord)
		{
			// Publisher Selected Value
			$this->dataPublisher->SelectedValue = $pro->publisher_id;
			// Category Selected Value
			$this->dropCat->SelectedValue = $pro->c_id;
			// Sub Category Selected Value
			$this->dropSubCat->SelectedValue = $pro->sub_cat;
			// Author Selected Value(Problem)
			$bookAuthors = BookAuthorsRecord::finder()->find("book_id = ?",$id_decode);
			if($bookAuthors instanceof BookAuthorsRecord)
			{
				$author_test = AuthorsRecord::finder()->find('author_id',$bookAuthors->author_id);
				if($author_test instanceof AuthorsRecord)
				{
					if($author_test->author_id == 21)
					{
						$this->dataAuthor->Selected = $author_test->author_id;
					}
				}
				
			}
			// // Translator Selected Value
			$bookTranslator = BookTranslatorRecord::finder()->find("book_id = ?",$id_decode);
			{
				if($bookTranslator instanceof BookTranslatorRecord)
				{
					$this->dataTranslator->SelectedValue = $bookTranslator->translator_id;
				}
			}

			$this->txtName->Text = $pro->name;
			$this->publisher_year->Text = $pro->publisher_year;
			$this->txtPrice->Text = $pro->price;
			$this->shabak->Text = $pro->shabak;
			$this->page->Text = $pro->page;
			$this->language->Text = $pro->language;
			$this->goodreads_rating->Text = $pro->goodreads_rating;
			$this->htmlAreaDesc->Text = $pro->desc;

			$publisher = PublisherRecord::finder()->find("publisher_name = ?",$this->dataPublisher->SelectedValue);
			if($publisher instanceof PublisherRecord)
				$this->publisher_id->Text = $publisher->publisher_id;
			
			// تعیین نشده
			if($pro->status == 0)
				$this->dropStatus->SelectedValue = 0;
			// فعال
			else if($pro->status  == 1)
				$this->dropStatus->SelectedValue = 1;
			// غیر فعال
			else if($pro->status  == 2)
				$this->dropStatus->SelectedValue = 2;

			
			if($pro->pic_path != null)
				$this->image->ImageUrl = $pro->pic_path;
			if($pro->pic_path1 != null)
				$this->image2->ImageUrl = $pro->pic_path1;
			if($pro->pic_path2 != null)
				$this->image3->ImageUrl = $pro->pic_path2;
			if($pro->pic_path3 != null)
				$this->image4->ImageUrl = $pro->pic_path3;
			if($pro->pic_path4 != null)
				$this->image5->ImageUrl = $pro->pic_path4;
		}
	}
	public function AddProduct($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);	
		$pro = BooksRecord::finder()->find("book_id = ?",$id_decode);
		if(!($pro instanceof BooksRecord)){
			$pro = new BooksRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	
			$persian = ['۰', '۱', '۲', '۳', '۴', '٤', '۵', '٥', '٦', '۶', '۷', '۸', '۹'];
			$english = [ 0 ,  1 ,  2 ,  3 ,  4 ,  4 ,  5 ,  5 ,  6 ,  6 ,  7 ,  8 ,  9 ];
			//Product info
			$pro->name = $this->txtName->Text;
			$pro->shabak = $this->shabak->Text;
			$pro->language = $this->language->Text;
			$pro->publisher_year = $this->publisher_year->Text;
			$pro->page = str_replace($persian, $english, $this->page->Text);
			$pro->price = str_replace($persian, $english, $this->txtPrice->Text);
			$pro->desc = $this->htmlAreaDesc->Text;
			$pro->c_id = $this->dropCat->SelectedValue;
			if($this->dropSubCat->SelectedValue == 'خالی')
			{
				$pro->sub_cat = null;
			}
			else if($this->dropSubCat->SelectedValue != null)
			{
				$pro->sub_cat = $this->dropSubCat->SelectedValue;
			}
			$pro->goodreads_rating = $this->goodreads_rating->Text;
			$publisher = PublisherRecord::finder()->find("publisher_name = ?",$this->dataPublisher->SelectedValue);
			if($publisher instanceof PublisherRecord)
				$pro->publisher_id = $publisher->publisher_id;
			
			// تعیین نشده
			if($this->dropStatus->SelectedValue = 0)
				$pro->status = 0;
			// فعال
			if($this->dropStatus->SelectedValue = 1)
				$pro->status = 1;
			// غیرفعال
			if($this->dropStatus->SelectedValue = 2)
				$pro->status = 2;

			//device image
			if(isset($_SESSION["session_image1"])){
				$pro->pic_path = $_SESSION["session_image1"];
			}
			if(isset($_SESSION["session_image2"])){
				$pro->pic_path1 = $_SESSION["session_image2"];
			}
			if(isset($_SESSION["session_image3"])){
				$pro->pic_path2 = $_SESSION["session_image3"];
			}
			if(isset($_SESSION["session_image4"])){
				$pro->pic_path3 = $_SESSION["session_image4"];
			}
			if(isset($_SESSION["session_image5"])){
				$pro->pic_path4 = $_SESSION["session_image5"];
			}
			$pro->save();

			// Inserting Data in book_authors Table
			foreach($this->dataAuthor->selectedValues as $eachAuthor)
			{
				$author = AuthorsRecord::finder()->find("author_id = ?",$this->dataAuthor->SelectedValue);
				if($author instanceof AuthorsRecord)
				{
					$book_author = BookAuthorsRecord::finder()->find("book_id = ?",$id_decode);
					if(!($book_author instanceof BookAuthorsRecord)){
						$book_author = new BookAuthorsRecord();
					}
					$book_author->author_id = $eachAuthor;
					// var_dump($this->dataAuthor->selectedValues);
					$book_author->book_id = $pro->book_id;
					$book_author->_del = 0;
					$book_author->save();
				}
			}
			foreach($this->dataTranslator->selectedValues as $eachTranslator)
			{
				$translator = TranslatorRecord::finder()->find("translator_id = ?",$this->dataTranslator->SelectedValue);
				if($translator instanceof TranslatorRecord)
				{
					$book_translator = BookTranslatorRecord::finder()->find("book_id = ?",$id_decode);
					if(!($book_translator instanceof BookTranslatorRecord)){
						$book_translator = new BookTranslatorRecord();
					}
					
					$book_translator->translator_id = $eachTranslator;
					$book_translator->book_id = $pro->book_id;
					$book_translator->_del = 0;
					$book_translator->save();
				}
			}

			//pnlAdd
			$this->pnlAdd->Enabled=false;
			//pnlAfterAdd
			$this->pnlAfterAdd->Visible=true;
			$this->pnlAfterAddTop->Visible=true; 
		} 
	}
	public function validateAddDevice($b)
	{
		$l=true;
		if($b){
			if(strlen($this->txtName->Text) < 3)
			{
				$this->txtName->style="border-color:red;";
				$l =false;
			}else if(strlen($this->txtName->Text) > 3){
				$this->txtName->style="border-color:green;";
			}
			if(is_numeric($this->shabak->Text))
			{
				$this->shabak->style="border-color:green;";
			}else if(!(is_numeric($this->shabak->Text))){
				$this->shabak->style="border-color:red;";
				$l =false;
			}
		}
		return $l;
	}
	public function fileUploaded($sender,$param){
		if($sender->HasFile)
		{
			$this->Result->Text="
			You just uploaded a file:
			<br/>
			Name: {$sender->FileName}
			<br/>
			Size: {$sender->FileSize}
			<br/>
			Type: {$sender->FileType}";
		
			$directory = "image/products";
			if(!is_dir($directory))
					mkdir($directory, 0777);
			$this->Path1->Value = $directory . '/'. time() . $sender->FileName;
			//$directory . '/'. time() . $sender->FileName;
			$sender->saveAs($this->Path1->Value);
			$this->image->ImageUrl = $this->Path1->Value; 
			$_SESSION["session_image1"]=$this->Path1->Value;
		}
	}
	public function fileUploaded1($sender,$param){
		if($sender->HasFile)
		{
			$this->Result2->Text="
			You just uploaded a file:
			<br/>
			Name: {$sender->FileName}
			<br/>
			Size: {$sender->FileSize}
			<br/>
			Type: {$sender->FileType}";
		
			$directory = "image/products";
			if(!is_dir($directory))
					mkdir($directory, 0777);
			$this->Path2->Value = $directory . '/'. time() . $sender->FileName;
			//$directory . '/'. time() . $sender->FileName;
			$sender->saveAs($this->Path2->Value);
			$this->image2->ImageUrl = $this->Path2->Value; 
			$_SESSION["session_image2"]=$this->Path2->Value;
		}
	}
	public function fileUploaded2($sender,$param){
		if($sender->HasFile)
		{
			$this->Result3->Text="
			You just uploaded a file:
			<br/>
			Name: {$sender->FileName}
			<br/>
			Size: {$sender->FileSize}
			<br/>
			Type: {$sender->FileType}";
		
			$directory = "image/products";
			if(!is_dir($directory))
					mkdir($directory, 0777);
			$this->Path3->Value = $directory . '/'. time() . $sender->FileName;
			//$directory . '/'. time() . $sender->FileName;
			$sender->saveAs($this->Path3->Value);
			$this->image3->ImageUrl = $this->Path3->Value; 
			$_SESSION["session_image3"]=$this->Path3->Value;
		}
	}
	public function fileUploaded3($sender,$param){
		if($sender->HasFile)
		{
			$this->Result4->Text="
			You just uploaded a file:
			<br/>
			Name: {$sender->FileName}
			<br/>
			Size: {$sender->FileSize}
			<br/>
			Type: {$sender->FileType}";
		
			$directory = "image/products";
			if(!is_dir($directory))
					mkdir($directory, 0777);
			$this->Path4->Value = $directory . '/'. time() . $sender->FileName;
			//$directory . '/'. time() . $sender->FileName;
			$sender->saveAs($this->Path4->Value);
			$this->image4->ImageUrl = $this->Path4->Value; 
			$_SESSION["session_image4"]=$this->Path4->Value;
		}
	}
	public function fileUploaded4($sender,$param){
		if($sender->HasFile)
		{
			$this->Result5->Text="
			You just uploaded a file:
			<br/>
			Name: {$sender->FileName}
			<br/>
			Size: {$sender->FileSize}
			<br/>
			Type: {$sender->FileType}";
		
			$directory = "image/products";
			if(!is_dir($directory))
					mkdir($directory, 0777);

			$this->Path5->Value = $directory . '/'. time() . $sender->FileName;
			//$directory . '/'. time() . $sender->FileName;
			$sender->saveAs($this->Path5->Value);
			$this->image5->ImageUrl = $this->Path5->Value; 
			$_SESSION["session_image5"]=$this->Path5->Value;
		}
	}

	public function ShowList()
	{
		$this->Response->redirect($this->service->constructUrl("product.ProductsList"));
	}


}	