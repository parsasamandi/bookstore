<?php
class PrintEachOrder extends TPage
{
	public function onInit($param){
        parent::onInit($param);
        $this->search(null, null);
        
		$id_decode = base64_decode($this->Request["order_id"]);
		$order = OrderRecord1::finder()->find("u_id = ? and o_id = ?",$_SESSION['session_user_digi'],$id_decode);
		if($order instanceof OrderRecord1){
            $user = UserRecord::finder()->find("u_id = ?" ,$_SESSION['session_user_digi']);
            if($user instanceof UserRecord){
                $this->name->Text = $user->name;
            }
			$this->transportation->Text = $order->transportation;
            $this->payment->Text = $order->payment;
			$addr = AddressRecord::finder()->find("address_id = ?" ,$order->address_id);
            if($addr instanceof AddressRecord){
                $this->mobile_phone->Text = $addr->mobile_phone;
                $this->city->Text = $addr->city;
                $this->address->Text = $addr->address;
                $this->zip_code->Text = $addr->zip_code;
            }
            $this->factor->Text = $order->order_factor;
            $this->total_price->Text = number_format($order->totalprice);
            $this->lit_qrcode->Text = 'https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=http%3A%2F%2Fwww.skyfall.com/index.php?page=order.FinalOrder%26order_factor%3D'.$order->order_factor.'&choe=UTF-8';
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
        $order = OrderRecord1::finder()->find("u_id = ? and o_id = ?",$_SESSION['session_user_digi'],$id_decode);
		if($order instanceof OrderRecord1){
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
        $order = OrderRecord1::finder()->find("u_id = ? and o_id = ?",$_SESSION['session_user_digi'],$id_decode);
		if($order instanceof OrderRecord1){
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