<?php
class NewUser extends TPage{
	public function onInit($param){
		parent::onInit($param);
		 
		$home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider3_img");
		if($home_setting2 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img->Text = $home_setting2->value;
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
		
	}
	public function send(){

		$email = UserRecord::finder()->find("email = ?",$this->txtEmail->Text);
		if($email instanceof UserRecord)
		{
			$this->txtEmail->style="border-color: yellow";
		}
		else{
			$user = new UserRecord(); 
			$user->email= $this->txtEmail->Text;
			$this->txtEmail->style="";
			$user->name = $this->txtName->Text;
			$user->family = $this->txtFamily->Text;
			$user->mobile = $this->txtMobile->Text;
			if($this->txtPass->Text == $this->txtRePass->Text)
			{
				$user->password = hash('sha256', $this->txtPass->Text);
				// $user->password = $this->txtPass->Text;
			}
			$user->status = 1;
			$user->save();
			$this->pnlAfterAdd->Visible=true;

		}
	} 

}