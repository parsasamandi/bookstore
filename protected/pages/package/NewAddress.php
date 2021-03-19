<?php
class NewAddress extends TPage{ 
	public function onInit($param){
		parent::onInit($param); 
		
		if(empty($_SESSION["session_user_digi"])){
            $_SESSION['NewAddress'] = "AddressList is not empty";
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
		}
		
		
		if($this->Request["id"])
		{
			$id_decode = base64_decode($this->Request["id"]);
			$addr = AddressRecord::finder()->find("address_id = ?" ,$id_decode);
			if($addr instanceof AddressRecord){

				$this->pnlPlus->Visible=false;
				$this->pnlEdit->Visible=true;

				$this->pnlButtonPlus->Visible=false;
				$this->pnlButtonEdit->Visible=true;

				$this->province->Text = $addr->province;
				$this->City->Text = $addr->city;
				$this->Area->Text = $addr->area;
				$this->address->Text = $addr->address;
				$this->zip_code->Text = $addr->zip_code;
				$this->phone->Text = $addr->phone;
				$this->mobile_phone->Text = $addr->mobile_phone; 
        	}
		}
		else{ 
			$this->pnlPlus->Visible=true;
			$this->pnlEdit->Visible=false;
			$this->pnlButtonPlus->Visible=true;
			$this->pnlButtonEdit->Visible=false;
		}
		

	}

	public function EdiAddress($sender,$param){
		$id_decode = base64_decode($this->Request["id"]);
		$addr = AddressRecord::finder()->find("address_id = ?" ,$id_decode);
        if($addr instanceof AddressRecord)
        {
			$addr->province = $this->province->Text;
            $addr->city =  $this->City->Text;
			$addr->area = $this->Area->Text;
            $addr->address = $this->address->Text;
            $addr->zip_code = $this->zip_code->Text;
            $addr->phone =  $this->phone->Text;
            $addr->mobile_phone = $this->mobile_phone->Text; 
			$addr->save();
			$this->pnlAfterAddEdit->Visible=true;
			$this->pnlAfterAddPlus->Visible=false;
			$this->pnlButtonEdit->Visible=true;
			$this->pnlButtonPlus->Visible=false;
			
		}
	}
	public function AddAddress($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);	
		$addr = AddressRecord::finder()->find("address_id = ?",$id_decode);
		if(!($addr instanceof AddressRecord)){
			$addr = new AddressRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	
			//Product info
			$addr->province = $this->province->Text;
            $addr->city =  $this->City->Text;
			$addr->area = $this->Area->Text;
            $addr->address = $this->address->Text;
            $addr->zip_code = $this->zip_code->Text;
            $addr->phone =  $this->phone->Text;
            $addr->mobile_phone = $this->mobile_phone->Text; 
            $addr->u_id = $_SESSION["session_user_digi"]; 
			$addr->save();

			$this->pnlAfterAddEdit->Visible=false;
			$this->pnlAfterAddPlus->Visible=true;
			$this->pnlButtonEdit->Visible=false;
			$this->pnlButtonPlus->Visible=true;
		} 
	}
	
	public function validateAddDevice($b)
	{
		$mobilephone = $this->mobile_phone->Text;
		$province = $this->province->Text;
		$cityName = $this->City->Text;
		$Area = $this->Area->Text;
		$html = $this->address->Text;
		$zip_code = $this->zip_code->Text;
		$phone = $this->phone->Text;

		$l=true;
		if($b){
			if(empty($mobilephone) || empty($province) 
				|| empty($cityName) || empty($Area)
				|| empty($html)|| empty($zip_code)
				|| empty($phone))
			{
				$l =false;
				$this->pnlAfterAddFalse->Visible=true;
			}	
			else{
				$l =true;
			}
		}
		
		return $l;
	}
	public function search($sender, $param){
        $this->Repeater->VirtualItemCount=$this->DataItemCount;
        $this->Repeater->CurrentPageIndex = 0;
        $this->populateData();
    }
    
    protected function getDataItemCount()
    {   
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':_del'] = 0;
        return AddressRecord::finder()->count($criteria);
    }
    
    protected function getSearchAdditonalCondition($t1=false)
    {
        $con = "";
        $t = $t1;
        
        return $con;
    }
    
    protected function getData($offset,$limit){
            
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "_del= :_del" . $this->getSearchAdditonalCondition(true); 
        $criteria->Parameters[':_del'] = 0;
        $criteria->Limit = $limit;
        $criteria->Offset = $offset;
        $c = AddressRecord::finder()->findAll($criteria);
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
	public function NewAddress1($sender,$param)
	{
		$this->Response->redirect($this->Service->constructUrl("package.NewAddress"));
	}
	
		
}
































