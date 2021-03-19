<?php
class EachOrder extends TPage{ 
	public function onInit($param){
        parent::onInit($param); 
        $this->search(null, null);

        if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
        
        $order = OrderRecord1::finder()->find("o_id = ?" ,$this->Request["order_id"]);
		if($order instanceof OrderRecord1){	

            if($order->status == 0)
            {
                #در صف بررسی
                $this->DropDownList->SelectedValue = 0;
            }
            else if($order->status == 1)
            {
                #تایید سفارش
                $this->DropDownList->SelectedValue = 1;

            }
            else if($order->status == 2)
            {
                #آماده سازی سفارش
                $this->DropDownList->SelectedValue = 2;
            }
            else if($order->status == 3)
            {
                #خروج از مراکز پردازش
                $this->DropDownList->SelectedValue = 3;
            }
            else if($order->status == 4)
            {
                #دریافت در مراکز توضیح
                $this->DropDownList->SelectedValue = 4;
            }
            else if($order->status == 5)
            {
                #تحویل به مامور ارسال
                $this->DropDownList->SelectedValue = 5;
            }
            else if($order->status == 6)
            {
                #تحویل شده به مشتری
                $this->DropDownList->SelectedValue = 6;
            }

            $this->transportation->Text = $order->transportation;
            $this->payment->Text = $order->payment;

            $user = UserRecord::finder()->find("u_id = ?" ,$this->Request['user_id']);
            if($user instanceof UserRecord){
                $this->name->Text = $user->name;
            }
            
            $addr = AddressRecord::finder()->find("address_id = ?" ,$order->address_id);
            if($addr instanceof AddressRecord){
                $this->mobile_phone->Text = $addr->mobile_phone;
                $this->city->Text = $addr->city;
                $this->zip_code->Text = $addr->zip_code;
                $this->address->Text = $addr->address;
            }

            $this->factor->Text = $order->order_factor;
            $this->total_price->Text = $order->totalprice;
		}
    }
    public function search($sender, $param){
		$this->Repeater->VirtualItemCount=$this->DataItemCount;
        $this->Repeater->CurrentPageIndex = 0;
        $this->populateData();
	}
    protected function getDataItemCount()
	{
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "order_factor=:order_factor" . $this->getSearchAdditonalCondition(true); 
        $order = OrderRecord1::finder()->find("o_id = ?",$this->Request["order_id"]);
        if($order instanceOf OrderRecord1){ 
            $criteria->Parameters[':order_factor'] = $order->order_factor;
        }
        $c = CartRecord::finder()->count($criteria);
        return $c;
	}
	
	protected function getSearchAdditonalCondition($t1=false)
	{
        $con = "";
        $t = $t1;
		return $con;
	}
	
	protected function getData($offset,$limit){
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "order_factor=:order_factor" . $this->getSearchAdditonalCondition(true); 
        $order = OrderRecord1::finder()->find("o_id = ?",$this->Request["order_id"]);
        if($order instanceOf OrderRecord1){ 
            $criteria->Parameters[':order_factor'] = $order->order_factor;
        }
        $criteria->Limit = $limit;
		$criteria->Offset = $offset;
        $c = CartRecord::finder()->findAll($criteria); 
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
    public function status($sender, $param)
	{
        $order3 = OrderRecord1::finder()->find("o_id = ?" ,$this->Request["order_id"]);
        if($order3 instanceof OrderRecord1){	
            if($this->DropDownList->SelectedValue == 0)
            {
                #در صف بررسی
                $order3->status = 0;

            }
            else if($this->DropDownList->SelectedValue == 1)
            {
                #تایید سفارش
                $order3->status = 1;
                $this->DropDownList->SelectedValue == true;

            }
            else if($this->DropDownList->SelectedValue == 2)
            {
                #آماده سازی سفارش
                $order3->status = 2;
            }
            else if($this->DropDownList->SelectedValue == 3)
            {
                #خروج از مراکز پردازش
                $order3->status = 3;
            }
            else if($this->DropDownList->SelectedValue == 4)
            {
                #دریافت در مراکز توضیح
                $order3->status = 4;
            }
            else if($this->DropDownList->SelectedValue == 5)
            {
                #تحویل به مامور ارسال
                $order3->status = 5;
            }
            else if($this->DropDownList->SelectedValue == 6)
            {
                #تحویل شده به مشتری
                $order3->status = 6;

            }
            $order3->save();
        }
    }
    public function print($sender,$param)
    {
        $id_encode64 = base64_encode($this->Request["order_id"]);
        $this->Response->redirect($this->Service->constructUrl("order.PrintEachOrder", array("order_id"=>$id_encode64)));
    }


}  


