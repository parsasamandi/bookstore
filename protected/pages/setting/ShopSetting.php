<?php
class ShopSetting extends TPage{
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
   
		$home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider3_img");
		if($home_setting2 instanceof HomeSettingRecord)
		{
			$this->image->ImageUrl = $home_setting2->value;
		}
	
		$home_setting4 = HomeSettingRecord::finder()->find("name = ?","slider1shop_title");
		if($home_setting4 instanceof HomeSettingRecord)
		{
			$this->txtSlider1Title->Text = $home_setting4->value;
		}
	
		$home_setting6 = HomeSettingRecord::finder()->find("name = ?","slider1shop_desc");
		if($home_setting6 instanceof HomeSettingRecord)
		{
			$this->txtSlider1Desc->Text = $home_setting6->value;
		}
		$home_setting22 = HomeSettingRecord::finder()->find("name = ?","ShopBox");
		if($home_setting22 instanceof HomeSettingRecord)
		{
			$this->ShopBox->Text = $home_setting22->value;
		}
		$home_setting23 = HomeSettingRecord::finder()->find("name = ?","ShopBox_desc");
		if($home_setting23 instanceof HomeSettingRecord)
		{
			$this->ShopBox_desc->Text = $home_setting23->value;
        }
        
        $home_setting24 = HomeSettingRecord::finder()->find("name = ?","ShopBox2");
		if($home_setting24 instanceof HomeSettingRecord)
		{
			$this->ShopBox2->Text = $home_setting24->value;
		}
		$home_setting25 = HomeSettingRecord::finder()->find("name = ?","ShopBox2_desc");
		if($home_setting25 instanceof HomeSettingRecord)
		{
			$this->ShopBox2_desc->Text = $home_setting25->value;
        }
        
        $home_setting26 = HomeSettingRecord::finder()->find("name = ?","ShopBox3");
		if($home_setting26 instanceof HomeSettingRecord)
		{
			$this->ShopBox3->Text = $home_setting26->value;
		}
		$home_setting26 = HomeSettingRecord::finder()->find("name = ?","ShopBox3_desc");
		if($home_setting26 instanceof HomeSettingRecord)
		{
			$this->ShopBox3_desc->Text = $home_setting26->value;
		}

		$home_setting55 = HomeSettingRecord::finder()->find("name = ?","footer_about");
		if($home_setting55 instanceof HomeSettingRecord)
		{
			$this->txtFooterSubject->Text = $home_setting55->value;
		}
		$home_setting57 = HomeSettingRecord::finder()->find("name = ?","slider1_footer");
		if($home_setting57 instanceof HomeSettingRecord)
		{
			$this->txtFooterDesc->Text = $home_setting57->value;
		}

        $home_setting56 = HomeSettingRecord::finder()->find("name = ?","final_order");
		if($home_setting56 instanceof HomeSettingRecord)
		{
			$this->final_order->Text = $home_setting56->value;
		}
		
        
        $home_setting28 = HomeSettingRecord::finder()->find("name = ?","slider8_img");
		if($home_setting28 instanceof HomeSettingRecord)
		{
			$this->image2->ImageUrl = $home_setting28->value;
        }
        
        $home_setting29 = HomeSettingRecord::finder()->find("name = ?","slider9_img");
		if($home_setting29 instanceof HomeSettingRecord)
		{
			$this->image3->ImageUrl = $home_setting29->value;
		}

		$home_setting30 = HomeSettingRecord::finder()->find("name = ?","slider4_img");
		if($home_setting30 instanceof HomeSettingRecord)
		{
			$this->image4->ImageUrl = $home_setting30->value;
		}

		$home_setting31 = HomeSettingRecord::finder()->find("name = ?","slider5_img");
		if($home_setting31 instanceof HomeSettingRecord)
		{
			$this->image5->ImageUrl = $home_setting31->value;
		}
		
		$home_setting32 = HomeSettingRecord::finder()->find("name = ?","slider7_img");
		if($home_setting32 instanceof HomeSettingRecord)
		{
			$this->image6->ImageUrl = $home_setting32->value;
		}
		$home_setting33 = HomeSettingRecord::finder()->find("name = ?","book_description");
		if($home_setting33 instanceof HomeSettingRecord)
		{
			$this->book_description->Text = $home_setting33->value;
		}
		$home_setting34 = HomeSettingRecord::finder()->find("name = ?","book_description2");
		if($home_setting34 instanceof HomeSettingRecord)
		{
			$this->book_description2->Text = $home_setting34->value;
        }
		$home_setting58 = HomeSettingRecord::finder()->find("name = ?","book_description2");
		if($home_setting58 instanceof HomeSettingRecord)
		{
			$this->txtPeopleIdea->Text = $home_setting58->value;
		}
		
	}
	public function Save($sender,$param)
	{

        $home_setting4 = HomeSettingRecord::finder()->find("name = ?","slider1shop_title");
		if($home_setting4 instanceof HomeSettingRecord)
		{
            $home_setting4->value = $this->txtSlider1Title->Text;
			$home_setting4->save(); 
		}
		$home_setting6 = HomeSettingRecord::finder()->find("name = ?","slider1shop_desc");
		if($home_setting6 instanceof HomeSettingRecord)
		{
            $home_setting6->value = $this->txtSlider1Desc->Text;
			$home_setting6->save(); 
		}
		//footer
		$home_setting55 = HomeSettingRecord::finder()->find("name = ?","footer_about");
		if($home_setting55 instanceof HomeSettingRecord)
		{
			 $home_setting55->value = $this->txtFooterSubject->Text;
			 $home_setting55->save();
		}
        $home_setting56 = HomeSettingRecord::finder()->find("name = ?","final_order");
		if($home_setting56 instanceof HomeSettingRecord)
		{
            $home_setting56->value = $this->final_order->Text;
            $home_setting56->save();
        }
		//box
		$home_setting22 = HomeSettingRecord::finder()->find("name = ?","ShopBox");
		if($home_setting22 instanceof HomeSettingRecord)
		{ 
			$home_setting22->value = $this->ShopBox->Text;
			$home_setting22->save();
		}
        $home_setting23 = HomeSettingRecord::finder()->find("name = ?","ShopBox_desc");
		if($home_setting23 instanceof HomeSettingRecord)
		{
            $home_setting23->value = $this->ShopBox_desc->Text;
			$home_setting23->save();
            
        }
        $home_setting24 = HomeSettingRecord::finder()->find("name = ?","ShopBox2");
		if($home_setting24 instanceof HomeSettingRecord)
		{
            $home_setting24->value = $this->ShopBox2->Text ;
			$home_setting24->save();
		}
		$home_setting25 = HomeSettingRecord::finder()->find("name = ?","ShopBox2_desc");
		if($home_setting25 instanceof HomeSettingRecord)
		{
            $home_setting25->value = $this->ShopBox2_desc->Text;
			$home_setting25->save();
        }
        
        $home_setting26 = HomeSettingRecord::finder()->find("name = ?","ShopBox3");
		if($home_setting26 instanceof HomeSettingRecord)
		{
            $home_setting26->value = $this->ShopBox3->Text;
			$home_setting26->save();
		}

		$home_setting56 = HomeSettingRecord::finder()->find("name = ?","slider1_footer");
		if($home_setting56 instanceof HomeSettingRecord)
		{
			 $home_setting56->value = $this->txtFooterDesc->Text;
			 $home_setting56->save();
		}

		$home_setting57 = HomeSettingRecord::finder()->find("name = ?","slider1_footer");
		if($home_setting57 instanceof HomeSettingRecord)
		{
			 $home_setting57->value = $this->txtFooterDesc->Text;
			 $home_setting57->save();
        }
		
		$home_setting58 = HomeSettingRecord::finder()->find("name = ?","people_idea");
		if($home_setting58 instanceof HomeSettingRecord)
		{
            $home_setting58->value =  $this->txtPeopleIdea->Text;
			$home_setting58->save();
		}
		
		$home_setting27 = HomeSettingRecord::finder()->find("name = ?","ShopBox3_desc");
		if($home_setting27 instanceof HomeSettingRecord)
		{
            $home_setting27->value =  $this->ShopBox3_desc->Text;
			$home_setting27->save();
		}

		$home_setting33 = HomeSettingRecord::finder()->find("name = ?","book_description");
		if($home_setting33 instanceof HomeSettingRecord)
		{
            $home_setting33->value =  $this->book_description->Text;
			$home_setting33->save();
		}

		$home_setting34 = HomeSettingRecord::finder()->find("name = ?","book_description2");
		if($home_setting34 instanceof HomeSettingRecord)
		{
            $home_setting34->value =  $this->book_description2->Text;
			$home_setting34->save();
		}


		
		//slider img 1
		$home_settingi1 = HomeSettingRecord::finder()->find("name = ?","slider3_img");
		if($home_settingi1 instanceof HomeSettingRecord && $this->PicBlob->value !== '')
		{ 
			$directory = "assets/slidersImage";
			if(!is_dir($directory))
				mkdir($directory, 0777);
			$b64 = $this->PicBlob->Value;
			$b64 = str_replace('data:image/png;base64,', '', $b64);
			$b64 = str_replace('data:image/jpeg;base64,', '', $b64);
			$b64 = str_replace(' ', '+', $b64);
			$bin = base64_decode($b64);
			$im  = imagecreatefromstring($bin);
			if (!$im) {
				die('Base64 value is not a valid image');
			}
			$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $this->PicName->Value);
			$this->Path->Value = $directory . '/'. time() . $fileName . '.png';
			imagepng($im, $this->Path->Value);
			try {
				if(is_writable(realpath($home_settingi1->value))){
					unlink(realpath($home_settingi1->value));
				}
			} catch (\Throwable $th) {
				//throw $th;
			}
			//$sender->saveAs($this->Path->Value);
			$this->image->ImageUrl = $this->Path->Value;
			$home_settingi1->value = $this->Path->Value;
			$home_settingi1->save();
		}
		//slider img 2
		$home_settingi28 = HomeSettingRecord::finder()->find("name = ?","slider8_img");
		if($home_settingi28 instanceof HomeSettingRecord && $this->PicBlob2->value !== '')
		{ 
			$directory = "assets/slidersImage";
			if(!is_dir($directory))
				mkdir($directory, 0777);
			$b64 = $this->PicBlob2->Value;
			$b64 = str_replace('data:image/png;base64,', '', $b64);
			$b64 = str_replace('data:image/jpeg;base64,', '', $b64);
			$b64 = str_replace(' ', '+', $b64);
			$bin = base64_decode($b64);
			$im  = imagecreatefromstring($bin);
			if (!$im) {
				die('Base64 value is not a valid image');
			}
			$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $this->PicName2->Value);
			$this->Path2->Value = $directory . '/'. time() . $fileName . '.png';
			imagepng($im, $this->Path2->Value);
			try {
				if(is_writable(realpath($home_settingi28->value))){
					unlink(realpath($home_settingi28->value));
				}
			} catch (\Throwable $th) {
				//throw $th;
			}
			//$sender->saveAs($this->Path->Value);
			$this->image2->ImageUrl = $this->Path2->Value;
			$home_settingi28->value = $this->Path2->Value;
			$home_settingi28->save();
        }
        
        $home_settingi29 = HomeSettingRecord::finder()->find("name = ?","slider9_img");
		if($home_settingi29 instanceof HomeSettingRecord && $this->PicBlob3->value !== '')
		{ 
			$directory = "assets/slidersImage";
			if(!is_dir($directory))
				mkdir($directory, 0777);
			$b64 = $this->PicBlob3->Value;
			$b64 = str_replace('data:image/png;base64,', '', $b64);
			$b64 = str_replace('data:image/jpeg;base64,', '', $b64);
			$b64 = str_replace(' ', '+', $b64);
			$bin = base64_decode($b64);
			$im  = imagecreatefromstring($bin);
			if (!$im) {
				die('Base64 value is not a valid image');
			}
			$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $this->PicName3->Value);
			$this->Path3->Value = $directory . '/'. time() . $fileName . '.png';
			imagepng($im, $this->Path3->Value);
			try {
				if(is_writable(realpath($home_settingi29->value))){
					unlink(realpath($home_settingi29->value));
				}
			} catch (\Throwable $th) {
				//throw $th;
			}
			//$sender->saveAs($this->Path->Value);
			$this->image3->ImageUrl = $this->Path3->Value;
			$home_settingi29->value = $this->Path3->Value;
			$home_settingi29->save();
		}

		$home_settingi30 = HomeSettingRecord::finder()->find("name = ?","slider4_img");
		if($home_settingi30 instanceof HomeSettingRecord && $this->PicBlob4->value !== '')
		{ 
			$directory = "assets/slidersImage";
			if(!is_dir($directory))
				mkdir($directory, 0777);
			$b64 = $this->PicBlob4->Value;
			$b64 = str_replace('data:image/png;base64,', '', $b64);
			$b64 = str_replace('data:image/jpeg;base64,', '', $b64);
			$b64 = str_replace(' ', '+', $b64);
			$bin = base64_decode($b64);
			$im  = imagecreatefromstring($bin);
			if (!$im) {
				die('Base64 value is not a valid image');
			}
			$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $this->PicName4->Value);
			$this->Path4->Value = $directory . '/'. time() . $fileName . '.png';
			imagepng($im, $this->Path4->Value);
			try {
				if(is_writable(realpath($home_settingi30->value))){
					unlink(realpath($home_settingi30->value));
				}
			} catch (\Throwable $th) {
				//throw $th;
			}
			//$sender->saveAs($this->Path->Value);
			$this->image4->ImageUrl = $this->Path4->Value;
			$home_settingi30->value = $this->Path4->Value;
			$home_settingi30->save();
		}
		
		$home_settingi31 = HomeSettingRecord::finder()->find("name = ?","slider5_img");
		if($home_settingi31 instanceof HomeSettingRecord && $this->PicBlob5->value !== '')
		{ 
			$directory = "assets/slidersImage";
			if(!is_dir($directory))
				mkdir($directory, 0777);
			$b64 = $this->PicBlob4->Value;
			$b64 = str_replace('data:image/png;base64,', '', $b64);
			$b64 = str_replace('data:image/jpeg;base64,', '', $b64);
			$b64 = str_replace(' ', '+', $b64);
			$bin = base64_decode($b64);
			$im  = imagecreatefromstring($bin);
			if (!$im) {
				die('Base64 value is not a valid image');
			}
			$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $this->PicName5->Value);
			$this->Path5->Value = $directory . '/'. time() . $fileName . '.png';
			imagepng($im, $this->Path5->Value);
			try {
				if(is_writable(realpath($home_settingi31->value))){
					unlink(realpath($home_settingi31->value));
				}
			} catch (\Throwable $th) {
				//throw $th;
			}
			//$sender->saveAs($this->Path->Value);
			$this->image5->ImageUrl = $this->Path5->Value;
			$home_settingi31->value = $this->Path5->Value;
			$home_settingi31->save();
		}
		
		$home_settingi32 = HomeSettingRecord::finder()->find("name = ?","slider7_img");
		if($home_settingi32 instanceof HomeSettingRecord && $this->PicBlob6->value !== '')
		{ 
			$directory = "assets/slidersImage";
			if(!is_dir($directory))
				mkdir($directory, 0777);
			$b64 = $this->PicBlob6->Value;
			$b64 = str_replace('data:image/png;base64,', '', $b64);
			$b64 = str_replace('data:image/jpeg;base64,', '', $b64);
			$b64 = str_replace(' ', '+', $b64);
			$bin = base64_decode($b64);
			$im  = imagecreatefromstring($bin);
			if (!$im) {
				die('Base64 value is not a valid image');
			}
			$fileName = preg_replace('/\\.[^.\\s]{3,4}$/', '', $this->PicName6->Value);
			$this->Path6->Value = $directory . '/'. time() . $fileName . '.png';
			imagepng($im, $this->Path6->Value);
			try {
				if(is_writable(realpath($home_settingi32->value))){
					unlink(realpath($home_settingi32->value));
				}
			} catch (\Throwable $th) {
				//throw $th;
			}
			//$sender->saveAs($this->Path->Value);
			$this->image6->ImageUrl = $this->Path6->Value;
			$home_settingi32->value = $this->Path6->Value;
			$home_settingi32->save();
		}

		//pnlAdd
		$this->pnlAdd->Enabled=false;
		//pnlAfterAdd
		$this->pnlAfterAddTop->Visible=true;
	} 
}

