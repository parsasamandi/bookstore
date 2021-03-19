<?php
class NewAdmin extends TPage{
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
		$acc = AccountRecord::finder()->find("acc_id = ?" , $id_decode);
		if($acc instanceof AccountRecord)
		{
            $this->name->Text = $acc->name;
            $this->family->Text = $acc->family;
            $this->sex->Text = $acc->sex;
			$this->username->Text = $acc->username;
			
		}
	}
	public function Add_Admin($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);	
		$acc = AccountRecord::finder()->find("acc_id = ?",$id_decode);
		if(!($acc instanceof AccountRecord)){
			$acc = new AccountRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	

            if($this->password->Text == $this->password2->Text and strlen($this->password->Text) > 5)
            {
				$acc->password = hash('sha256',$this->password->Text);
				$acc->name = $this->name->Text;
				$acc->family = $this->family->Text;
				if($acc->sex = "مرد")
				{
					$acc->sex = 1;
				}
				if($acc->sex = "زن")
				{
					$acc->sex = 2;
				}
				$acc->username = $this->username->Text;
				$acc->last_login = JCalendar::getTodayDate();
				$acc->status = 1;
				$acc->_del = 0;
				$acc->save(); 
				//pnlAdd
				$this->pnlAdd->Enabled=false;
				//pnlAfterAdd
				$this->pnlAfterAdd->Visible=true;
				$this->pnlAfterAddTop->Visible=true; 
			} 
			else if(strlen($this->password->Text != $this->password2->Text)){
				$this->password->style="border-color:red;";
				$this->password->Text="رمز عبور یکسان نیست";
				$this->password2->style="border-color:red;";
				$this->password2->Text="رمز عبور یکسان نیست";
			}
			// else if(AccountRecord::finder()->find("username = ?",$this->username->Text) instanceof AccountRecord){
			// 	$this->username->style="border-color: yellow";
			// }
			else if(strlen($this->password->Text) < 5){
				$this->password->style="border-color:red;";
				$this->password->Text="رمز عبور باید بیشتر از ۵ حرف باشد";
				$this->password2->style="border-color:red;";
				$this->password2->Text="رمز عبور باید بیشتر از ۵ حرف باشد";
			}
		} 
	}
	public function validateAddDevice($b)
	{
		$l=true;
		if($b){
			if(strlen($this->password->Text) < 5)
			{
				$this->password->style="border-color:red;";
				$this->password->Text="رمز عبور باید بیشتر از ۵ حرف باشد";
				$this->password2->style="border-color:red;";
				$this->password2->Text="رمز عبور باید بیشتر از ۵ حرف باشد";
				$l =false;
			}else if(AccountRecord::finder()->find("username = ?",$this->username->Text) instanceof AccountRecord){
				$this->username->style="border-color: yellow";
				$l = false;
			}
		}
		return $l;
	}


	public function ShowList($sender,$param){
		$this->Response->redirect($this->service->constructUrl("admin.AdminList"));
	}

}	