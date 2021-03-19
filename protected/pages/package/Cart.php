<?php
class Cart extends TPage{ 
	public function onInit($param){
		parent::onInit($param);
		
		if(empty($_SESSION["session_user_digi"]))
		{
			$_SESSION['cart_session_back'] = "Cart Session back is empty";
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
		}
		
		// if(!empty($_SESSION['address_id']))
		// {
		// 	$address = AddressRecord::finder()->find("address_id = ?",$_SESSION['address_id']);
		// 	if($address instanceof AddressRecord)
		// 	{
		// 		$this->user_address->Text = $address->address;
		// 		$this->TActivePanelCart->Visible = false;
		// 		$this->TActivePanelAddress->Visible = true;
				
		// 	}
		// }

		$user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
		if($user instanceof UserRecord)
			$CartProductCount = CartRecord::finder()->count("u_id = ? and order_factor='0'",$user->u_id);
		if($CartProductCount == 0)
		{
			$this->pnlFalseCart->Visible= true;; 
			$this->pnlFalseButton->Enabled=false; 
		}
		
		$home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider7_img");
		if($home_setting2 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img->Text = $home_setting2->value;
		}


		$this->search(null, null);
		$this->searchCart(null, null);
		

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
        $criteria->Condition = "u_id=:u_id and order_factor=:order_factor" . $this->getSearchAdditonalCondition(true); 
        if(isset($_SESSION["session_user_digi"]))
        {
            $user =  UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord)
                $criteria->Parameters[':u_id'] = $user->u_id;
		}
        $criteria->Parameters[':order_factor'] = '0';
        $criteria->Limit = $limit;
		$criteria->Offset = $offset;
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
			
		// session_start();
        // if(!empty($_SESSION['cart_test'])) {
        //     $where = implode(',',$_SESSION['cart_test']);
        //     $sql = "select * from product where p_id in ($where) and shop_del = 0;";
        //     $c = ProductRecord::finder()->findAllBySql($sql);  
        //     return $c;
        // } 
        $criteria = new TActiveRecordCriteria; 
        $criteria->Condition = "u_id=:u_id and order_factor=:order_factor" . $this->getSearchAdditonalCondition(true); 
        if(isset($_SESSION["session_user_digi"]))
        {
            $user =  UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
            if($user instanceof UserRecord)
                $criteria->Parameters[':u_id'] = $user->u_id;
		}
        $criteria->Parameters[':order_factor'] = '0';
		$_SESSION['cart_number'] = CartRecord::finder()->count($criteria);
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
	public function searchCart($sender, $param){
		$this->RepeaterCart->VirtualItemCount=$this->DataItemCountCart;
		$this->RepeaterCart->CurrentPageIndex = 0;
		$this->populateDataCart();
	}
		
	protected function getDataItemCountCart()
	{
		$criteria = new TActiveRecordCriteria;
		$criteria->Condition = "_del= :_del and u_id=:u_id" . $this->getSearchAdditonalConditionCart();
		$criteria->Parameters[':_del'] = 0;
		$user = UserRecord::finder()->find("u_id = ?",$_SESSION['session_user_digi']);
		if($user instanceof UserRecord)
		{
			$criteria->Parameters[':u_id'] = $user->u_id;
		}
		return AddressRecord::finder()->count($criteria);
	}
		
	protected function getSearchAdditonalConditionCart($t1=false)
	{
		$con = "";
		return $con;
	}
	
	protected function getDataCart($offset,$limit){
			
		$criteria = new TActiveRecordCriteria; 
		$criteria->Condition = "_del= :_del and u_id=:u_id" . $this->getSearchAdditonalConditionCart();
		$criteria->Parameters[':_del'] = 0;
		$user = UserRecord::finder()->find("u_id = ?",$_SESSION['session_user_digi']);
		if($user instanceof UserRecord)
		{
			$criteria->Parameters[':u_id'] = $user->u_id;
		}
		$criteria->Limit = $limit;
		$criteria->Offset = $offset;
		$c = AddressRecord::finder()->findAll($criteria);
		return $c;
	}
	protected function populateDataCart()
	{
		$offset=$this->RepeaterCart->CurrentPageIndex*$this->RepeaterCart->PageSize;
		$limit=$this->RepeaterCart->PageSize;
		if($offset+$limit>$this->RepeaterCart->VirtualItemCount)
			$limit=$this->RepeaterCart->VirtualItemCount-$offset;
		$data=$this->getDataCart($offset,$limit);
		$this->RepeaterCart->DataSource=$data;
		$this->RepeaterCart->dataBind();
	}
		
	public function pageChangedCart($sender,$param)
	{
		$this->RepeaterCart->CurrentPageIndex=$param->NewPageIndex;
		$this->populateDataCart();
	}
	
	public function RenderCallbackCart($sender, $param)
	{
		$this->TActivePanelCart->render($param->NewWriter);
	}
	public function ShowProducts($sender, $param)
	{
		$this->Response->redirect($this->Service->constructUrl("product.Products"));
	}
	public function Submittion($offset,$limit){

		$order = new OrderRecord1();
		if(isset($_SESSION['address_id']) and isset($_SESSION['session_user_digi']))
		{
			$addr = AddressRecord::finder()->find("address_id = ? and u_id = ?",$_SESSION['address_id'],$_SESSION['session_user_digi']);
			if($addr instanceof AddressRecord)
			{
				if(!empty($addr->address_id))
				{
					$order->address_id = $addr->address_id;
				}
				else{
					$this->pnlFalseAddress->Visible=true; 
				}
			}
			$user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
			if($user instanceof UserRecord)
				$order->u_id = $user->u_id;
			
			if($this->Radio1->Checked)
			{
				$order->transportation = 'ارسال با پیک-مخصوص شهر تهران';
			}
			if($this->Radio2->Checked)
			{
				$order->transportation = 'ارسال پستی';
			}
			if($this->Radio_cash->Checked)
			{
				$order->payment = 'نقدی';
			}
			if($this->Radio_home->Checked)
			{
				$order->payment = 'پرداخت در محل';
			}
			if($this->Radio_transport->Checked)
			{
				$order->payment = 'کارت به کارت';
			}
			if($this->Radio_online->Checked)
			{
				$order->payment = 'پرداخت آنلاین';
			}
			
			$count_orders = OrderRecord1::finder()->count("u_id = ?",$_SESSION['session_user_digi']) + 1001;
			$user = UserRecord::finder()->find("u_id = ?",$_SESSION['session_user_digi']);
			if($user instanceOf UserRecord)
			{
				$_SESSION['order_number'] = "sky-".$count_orders.$user->u_id;
				$CartProduct = CartRecord::finder()->findAll("u_id = ? and order_factor= ?",$user->u_id,'0');
				foreach($CartProduct as $cart_pro)
				{
					$addr = AddressRecord::finder()->find("address_id = ? and u_id = ?",$_SESSION['address_id'],$_SESSION['session_user_digi']);
					if($addr instanceof AddressRecord)
					{
						if(!empty($_SESSION['order_number']) and !empty($addr->address_id)) 
						{
							$cart_pro->order_factor = $_SESSION['order_number'];
							$cart_pro->save();
						}
					}
					else{
						$this->pnlFalseAddress->Visible=true; 
					}
				}
			}
			$order->order_factor = $_SESSION['order_number'];
			
			$sum = 0;
			$Carts = CartRecord::finder()->findAll("order_factor = ? ",$_SESSION['order_number']);
			{
				foreach($Carts as $cart)
				{
					$book = BooksRecord::finder()->find("book_id = ?" ,$cart->book_id);
					if($book instanceof BooksRecord)
						$sum += $cart->count * $book->price;
				}
			}
			$order->totalprice = $sum;

			$addr = AddressRecord::finder()->find("address_id = ? and u_id = ?",$_SESSION['address_id'],$_SESSION['session_user_digi']);
			if($addr instanceof AddressRecord)
			{
				if(!empty($addr->address_id))
				{
					$order->save(); 
					$this->pnlAfterAdd->Visible=true; 
					$this->Response->redirect($this->Service->constructUrl("order.FinalOrder"));
				}
				else{
					$this->pnlFalseAddress->Visible=true; 
				}
			}
		}
	}
	protected function NewAddress($sender,$param)
	{
		$this->Response->redirect($this->Service->constructUrl("package.NewAddress"));
	}
	public function AddAddress($sender,$param)
	{
		$this->TActivePanelCart->Visible = true;
		$this->TActivePanelAddress->Visible = false;
	}
	

}
