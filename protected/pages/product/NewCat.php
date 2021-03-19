<?php
class NewCat extends TPage{
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

		$id_decode = base64_decode($this->Request["id"]);
		$cat = CatRecord::finder()->find("c_id = ?" , $id_decode);
		if($cat instanceof CatRecord)
		{
			if($cat->pic != null)
				$this->image->ImageUrl = $cat->pic;

            $this->txtName->Text = $cat->name;
			if($cat->status == 0)
				$this->dropStatus->SelectedValue = 0;
			else if($cat->status  == 1)
				$this->dropStatus->SelectedValue = 1;
			else if($cat->status  == 2)
				$this->dropStatus->SelectedValue = 2;	
		}

	}
	public function AddCat($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);
		$cat = CatRecord::finder()->find("c_id = ?",$id_decode);
		if(!($cat instanceof CatRecord)){
			$cat = new CatRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	 
			$cat->name = $this->txtName->Text;
			if(isset($_SESSION["imageCat"])){
				$cat->pic = $_SESSION["imageCat"];
			}
			//status drop
			$cat->status = $this->dropStatus->SelectedValue;
			$cat->save(); 
			//pnlAdd
			$this->pnlAdd->Enabled=false;
			//pnlAfterAdd
			$this->pnlAfterAdd->Visible=true;
			$this->pnlAfterAddTop->Visible=true; 
		} 
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
			$_SESSION["imageCat"]=$this->Path1->Value;
		}
	}

	public function validateAddDevice($b)
	{
		$l=true;
// 		if($b){
// 			if(strlen($this->txtProNum->Text) < 3)
// 			{
// 				$this->txtProNum->style="border-color:red;";
// 				$l =false;
// 			}else if(ProductRecord::finder()->find("pro_num = ?",$this->txtProNum->Text) instanceof ProductRecord){
// 				$this->txtProNum->style="border-color: yellow";
// 				$l = false;
// 			}else{
// 				$this->txtProNum->style="border-color:green;";
// 			}
// 		}
		return $l;
	}

}