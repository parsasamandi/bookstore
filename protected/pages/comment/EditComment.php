<?php
class EditComment extends TPage{
public function onInit($param){
		parent::onInit($param);

		if(empty($_SESSION["session_user_digi"]))
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));

		$this->pnlAfterAddTop->Visible=false;
		$id_decode = base64_decode($this->Request["id"]);
		$comment = CommentRecord::finder()->find("comment_id = ?",$id_decode);
		if($comment instanceof CommentRecord)
		{
            $this->Name->Text = $comment->name;
            $this->Title->Text = $comment->title;
            $this->Message->Text = $comment->message;
		}
    }
    public function Submit($sender,$param)
    {
        $id_decode = base64_decode($this->Request["id"]);
        $com = CommentRecord::finder()->find("comment_id = ?",$id_decode);
		if($com instanceof CommentRecord)
		{
            $this->Name->Text = $com->name;
            $this->Title->Text = $com->title;
            $this->Message->Text = $com->message;
            $com->status = 1;
            $com->save();
			$this->pnlAfterAddTop->Visible=true; 
		}

    }
	// public function AddProduct($sender,$param){
	// 	$b  = false;
	// 	$id_decode = base64_decode($this->Request["id"]);	
	// 	$pro = ProductRecord::finder()->find("p_id = ?",$id_decode);
	// 	if(!($pro instanceof ProductRecord)){
	// 		$pro = new ProductRecord();
	// 		$b = true;
	// 	}
	// 	if($this->validateAddDevice($b)){	
	// 		//Product info
	// 		$pro->name = $this->txtName->Text;
	// 		$pro->pro_num = $this->txtProNum->Text;
	// 		$pro->model = $this->txtModel->Text;
	// 		$pro->company = $this->txtCompany->Text;
	// 		$pro->country = $this->txtCountry->Text;
	// 		$pro->price = $this->txtPrice->Text;
	// 		$pro->desc = $this->htmlAreaDesc->Text;
	// 		$_SESSION["session_product"]=$this->txtProNum->Text;
	// 		$pro->cat = $this->dropCat->SelectedValue;
	// 		$pro->sub_cat = $this->dropSubCat->SelectedValue;
	// 		//status drop
	// 		$pro->status = $this->dropStatus->SelectedValue;
	// 		if(!empty($_SESSION["session_user_digi"]))
	// 		{
	// 			$pro->u_id = $_SESSION["session_user_digi"];
	// 		}
	// 		else{
	// 			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
	// 		}
	// 		//device image
	// 		if(isset($_SESSION["session_image"])){
	// 			$pro->pic_path = $_SESSION["session_image"];
	// 		}

	// 		$pro->save();  
	// 		//pnlAdd
	// 		$this->pnlAdd->Enabled=false;
	// 		//pnlAfterAdd
	// 		$this->pnlAfterAdd->Visible=true;
	// 		$this->pnlAfterAddTop->Visible=true; 
	// 	} 
	// }
	public function validateAddDevice($b)
	{
		$l=true;
		if($b){
			if(strlen($this->txtProNum->Text) < 3)
			{
				$this->txtProNum->style="border-color:red;";
				$l =false;
			}else if(ProductRecord::finder()->find("pro_num = ?",$this->txtProNum->Text) instanceof ProductRecord){
				$this->txtProNum->style="border-color: yellow";
				$l = false;
			}else{
				$this->txtProNum->style="border-color:green;";
			}
		}
		return $l;
	}
	public function fileUploaded($sender,$param){
// 		$id_decode = base64_decode($this->Request["id"]);
// 		if(isset($_SESSION["session_product"]))
// 		{
// 		$pro = ProductRecord::finder()->find("pro_num = ?",$_SESSION["session_product"]);
// 		if($pro instanceof ProductRecord){
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
				$_SESSION["session_image"]=$this->Path1->Value;
			}
// 		}
// 		}
	}

}	