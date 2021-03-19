<?php
class RowProductsHome extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}

	// public function addCart($sender, $param){ 
	// 	$cart = new CartRecord();
	// 	$cart->product_id = $this->id->Value;
	// 	if(isset($this->id->Value))
	// 	{
	// 		$user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
	// 		if($user instanceof UserRecord)
	// 			$cart->u_id = $user->u_id;
	// 	}
	// 	$cart->count = $this->txtCount->Text;
	// 	$_SESSION['count'] = $this->txtCount->Text;
	// 	$cart->save();	
	// 	$this->Response->redirect($this->Service->constructUrl("package.cart"));
	// }	
	

}