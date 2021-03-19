<?php
class NewAuthor extends TPage{
public function onInit($param){
		parent::onInit($param);

		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
 

		$this->pnlAfterAdd->Visible=false;
		$this->pnlAfterAddTop->Visible=false;
		$id_decode = base64_decode($this->Request["id"]);
		$writer = AuthorsRecord::finder()->find("author_id = ?",$id_decode);
		if($writer instanceof AuthorsRecord)
		{
			$this->writer_name->Text = $writer->name;
			$this->htmlAreaDesc->Text = $writer->author_bio;
		}

		// $data = array();
		// $i = 1;
		// $books = ‌BooksRecord::finder()->findAll("_del = ?",1);
		// foreach($books as $book){
		// 	$data[] = array($book->name,$book->book_id);
		// }
		// $this->dataBook->DataSource = $data;
		// $this->dataBook->dataBind();

		$dataBooks = array();
		$i = 1;
		$books = BooksRecord::finder()->findAll("_del = ?",0);
		foreach($books as $book){
			$dataBooks[] = array($book->name,$book->book_id);
		}
		$this->dataBook->DataSource = $dataBooks;
		$this->dataBook->dataBind();
		
	}
	public function AddAuthor($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);	
		$writer = AuthorsRecord::finder()->find("author_id = ?",$id_decode);
		if(!($writer instanceof AuthorsRecord)){
			$writer = new AuthorsRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	
			//Product info
			$writer->name = $this->writer_name->Text;
			$writer->author_bio = $this->htmlAreaDesc->Text;
			$writer->_del = 0;
			$writer->save(); 
			
			// Inserting Data in book_authors Table
			foreach($this->dataBook->selectedValues as $eachBook)
			{
				$book = BooksRecord::finder()->find("book_id = ?",$this->dataBook->selectedValue);
				if($book instanceof BooksRecord)
				{
					$book_author = BookAuthorsRecord::finder()->find("author_id = ?",$id_decode);
					if(!($book_author instanceof BookAuthorsRecord)){
						$book_author = new BookAuthorsRecord();
					}
					$book_author->author_id = $writer->author_id;
					// var_dump($this->dataAuthor->selectedValues);
					$book_author->book_id = $eachBook;
					$book_author->_del = 0;
					$book_author->save();
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
			if(strlen($this->writer_name->Text) < 5)
			{
				$this->writer_name->style="border-color:red;";
				$l =false;
			}else{
				$this->writer_name->style="border-color:green;";
			}
		}
		return $l;
	}
	


}	