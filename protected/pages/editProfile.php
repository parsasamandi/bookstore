<?php
class editProfile extends TPage{
    public function onInit($param)
    {
        if(empty($_SESSION["session_user_digi"]))
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));

        if(isset($_SESSION["session_user_digi"])){
            $user = UserRecord::finder()->find("u_id = ?" ,$_SESSION['session_user_digi']);
		    if($user instanceof UserRecord){
                $this->email->Text = $user->email;
                $this->family->Text = $user->family;
                $this->name->Text = $user->name;
                $this->password->Text = $user->password;
                $this->password1->Text = $user->password;
                $this->phone->Text = $user->mobile;
            }
            else{
                $this->Response->redirect($this->Service->constructUrl("login.login"));
            }
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
            $directory . '/'. time() . $sender->FileName;
            $sender->saveAs($this->Path1->Value);
            $this->image->ImageUrl = $this->Path1->Value; 
            $_SESSION["session_image"] = $this->Path1->Value;
        }
    }
    public function editUser($sender,$param)
    {
        $user = UserRecord::finder()->find("u_id = ?" , $_SESSION['session_user_digi']);
        if($user instanceof UserRecord)
        {
            $user->email = $this->email->Text;
            $user->family = $this->family->Text;
            if($this->password->Text == $this->password1->Text)
            {
                $user->password = $this->password->Text;
            }
            $user->mobile = $this->phone->Text;
            
            $user->save();
            $this->pnlAdd->enabled=false;
            // $this->pnlButton->Visible=false;
            $this->pnlAfterAdd->Visible=true;
        }

    }
    public function Edit($sender,$param)
    {
		$this->Response->redirect($this->Service->constructUrl("editprofile"));
    }
		

   
}

