<?php
class FinalOrder extends TPage{ 
	public function onInit($param){
		parent::onInit($param); 

		$order1 = OrderRecord1::finder()->find("u_id = ? and order_factor = ?" ,$_SESSION['session_user_digi'],$_SESSION['order_number']);
		if($order1 instanceof OrderRecord1){
			$this->payment->Text = $order1->payment;
			$this->transportation->Text = $order1->transportation;
			$this->total_price->Text = number_format($order1->totalprice);
			$this->product_factor->Text = $order1->order_factor;
			$this->Qr->Text = 'https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=http%3A%2F%2Fwww.jazireeketab.com/index.php?page=order.FinalOrder%26order_factor%3D'.$order1->order_factor.'&choe=UTF-8';
		}
		$id_decode = base64_decode($this->Request["address_id"]);
		$addr = AddressRecord::finder()->find("u_id = ? and address_id = ?" ,$_SESSION['session_user_digi'],$_SESSION['address_id']);
		if($addr instanceof AddressRecord){
			$this->address->Text = $addr->address;
		}
		$this->search(null, null);
	}  
	////////////////////// Reprater /////////////////////////////// 
	public function search($sender, $param){
		$this->Repeater->VirtualItemCount=$this->DataItemCount;
        $this->Repeater->CurrentPageIndex = 0;
        $this->populateData();
	}
	
	protected function getDataItemCount()
	{
        $criteria = new TActiveRecordCriteria;
        $criteria->Condition = "u_id= :u_id and order_factor=:order_factor" . $this->getSearchAdditonalCondition(true); 
		if(isset($_SESSION["session_user_digi"]))
        {
            $user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord)
                $criteria->Parameters[':u_id'] = $user->u_id;
        }
        $criteria->Parameters[':order_factor'] = $_SESSION['order_number'];
		return CartRecord::finder()->count($criteria);

	}
	
	protected function getSearchAdditonalCondition($t1=false)
	{
        $con = "";
        $t = $t1;
		return $con;
	}
	
	protected function getData($offset,$limit){
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "u_id=:u_id and order_factor=:order_factor" . $this->getSearchAdditonalCondition(true);; 
        if(isset($_SESSION["session_user_digi"]))
        {
            $user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord)
                $criteria->Parameters[':u_id'] = $user->u_id;
        }
        $criteria->Parameters[':order_factor'] = $_SESSION['order_number'];
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

	public function final_order($sender,$param)
	{
		$order1 = OrderRecord1::finder()->find("u_id = ? and order_factor = ?" ,$_SESSION['session_user_digi'],$_SESSION['order_number']);
		if($order1 instanceof OrderRecord1)
			$order = HomeSettingRecord::finder()->find("name = ?","final_order");
			if($order instanceof HomeSettingRecord)
			{
				$this->Response->redirect($order->value);
			}
	}
	public function Print($sender,$param)
	{
		$order = OrderRecord1::finder()->find("u_id = ? and order_factor = ?" ,$_SESSION['session_user_digi'],$_SESSION['order_number']);
		if($order instanceof OrderRecord1)
		{
			$id_encode64 = base64_encode($order->o_id);
			$this->Response->redirect($this->Service->constructUrl("order.PrintEachOrder", array("order_id"=>$id_encode64)));
		}
	}
	
	
	public function RenderCallback($sender, $param)
	{
        $this->TActivePanel->render($param->NewWriter);
	}
	
}
