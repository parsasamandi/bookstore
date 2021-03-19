<?php
class NewQuote extends TPage{
public function onInit($param){
		parent::onInit($param);
		
		//Check Access of user for this page from LimitationRecord DataBase Table.
		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
		// End of Check Access of user for this page from LimitationRecord DataBase Table.

		$this->pnlAfterAdd->Visible=false;
		$this->pnlAfterAddTop->Visible=false;
		$id_decode = base64_decode($this->Request["id"]);
		$quote = QuoteRecord::finder()->find("quote_id = ?",$id_decode);
		if($quote instanceof QuoteRecord)
		{
			$this->quote->Text = $quote->quote;
		}

		$dataAuthor = array();
		$i = 1;
		$authors = AuthorsRecord::finder()->findAll("_del = ?",0);
		foreach($authors as $author){
			$dataAuthor[] = array($author->name,$author->author_id);
		}
		$this->dataAuthor->DataSource = $dataAuthor;
		$this->dataAuthor->dataBind();

	}
	public function AddQuote($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);
		$quote = QuoteRecord::finder()->find("quote_id = ?",$id_decode);
		if(!($quote instanceof QuoteRecord)){
			$quote = new QuoteRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	 
			$quote->quote = $this->quote->Text;
			$quote->author_id = $this->dataAuthor->SelectedValue;
			$quote->save(); 
			//pnlAdd
			$this->pnlAdd->Enabled=false;
			//pnlAfterAdd
			$this->pnlAfterAdd->Visible=true;
			$this->pnlAfterAddTop->Visible=true; 
		} 
	}

	// public function fileUploaded($sender,$param){
	// 	if($sender->HasFile)
	// 	{
	// 		$this->Result->Text="
	// 		You just uploaded a file:
	// 		<br/>
	// 		Name: {$sender->FileName}
	// 		<br/>
	// 		Size: {$sender->FileSize}
	// 		<br/>
	// 		Type: {$sender->FileType}";
		
	// 		$directory = "image/products";
	// 		if(!is_dir($directory))
	// 				mkdir($directory, 0777);
	// 		$this->Path1->Value = $directory . '/'. time() . $sender->FileName;
	// 		//$directory . '/'. time() . $sender->FileName;
	// 		$sender->saveAs($this->Path1->Value);
	// 		$this->image->ImageUrl = $this->Path1->Value; 
	// 		$_SESSION["imageCat"]=$this->Path1->Value;
	// 	}
	// }

	public function validateAddDevice($b)
	{
		$l=true;
		return $l;
	}

}