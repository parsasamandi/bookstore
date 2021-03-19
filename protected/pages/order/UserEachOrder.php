<?php
class UserEachOrder extends TPage{ 
	public function onInit($param){
        parent::onInit($param); 
        $this->search(null, null);
        // $this->search2(null, null);
        if(empty($_SESSION["session_user_digi"]))
            $this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
        
        $order = OrderRecord1::finder()->find("o_id = ?" ,base64_decode($this->Request["order_id"]));
		if($order instanceof OrderRecord1){	
            $this->t1->Style="color:black";
            $this->t2->Style="color:black";
            $this->t3->Style="color:black";
            $this->t4->Style="color:black";
            $this->t5->Style="color:black";
            $this->t6->Style="color:black";
            $this->t7->Style="color:black";
            
            $user = UserRecord::finder()->find("u_id = ?" ,$_SESSION['session_user_digi']);
            if($user instanceof UserRecord){
                $this->name->Text = $user->name;
            }
            if($order->status == 0)
            {
                $this->t1->Style="background-color:yellow;color:black";
            }
            if($order->status == 1)
            {
                $this->t2->Style="background-color:yellow;color:black";
            }
            if($order->status == 2)
            {
                $this->t3->Style="background-color:yellow;color:black";
            }
            if($order->status == 3)
            {
                $this->t4->Style="background-color:yellow;color:black";
            }
            if($order->status == 4)
            {
                $this->t5->Style="background-color:yellow;color:black";
            }
            if($order->status == 5)
            {
                $this->t6->Style="background-color:yellow;color:black";
            }
            if($order->status == 6)
            {
                $this->t7->Style="background-color:yellow;color:black";
            }

			$this->transportation->Text = $order->transportation;
            $this->payment->Text = $order->payment;
            $addr = AddressRecord::finder()->find("address_id = ?" ,$order->address_id);
            if($addr instanceof AddressRecord){
                $this->mobile_phone->Text = $addr->mobile_phone;
                $this->city->Text = $addr->city;
                $this->zip_code->Text = $addr->zip_code;
                $this->address->Text = $addr->address;


            }
            
            $this->lit_qrcode->Text = 'https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=http%3A%2F%2Fwww.skyfall.com/index.php?page=order.FinalOrder%26order_factor%3D'.$order->order_factor.'&choe=UTF-8';
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
        $id = base64_decode($this->Request["order_id"]);
        $order = OrderRecord1::finder()->find("o_id = ?",$id);
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
        $id = base64_decode($this->Request["order_id"]);
        $order = OrderRecord1::finder()->find("o_id = ?",$id);
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

}  


