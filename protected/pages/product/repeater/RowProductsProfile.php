<?php
class RowProductsProfile extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("product.NewProduct", array("id"=>$id_encode64)));
    }

    public function more($sender, $param){
        $id_encode64 =  $this->id->Value;
        $this->Response->redirect($this->Service->constructUrl("product.EachProduct", array("id"=>$id_encode64)));
    }
    public function printMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("product.PrintEachProduct", array("id"=>$id_encode64)));
    }
    public function addCart($sender, $param){ 
		$cart = new CartRecord();
		$cart->product_id = $this->id->Value;
		if(isset($this->id->Value))
		{
			$user = UserRecord::finder()->find("u_id = ?",$_SESSION["session_user_digi"]);
			if($user instanceof UserRecord)
				$cart->u_id = $user->u_id;
		}
		$cart->count = $this->txtCount->Text;
		$_SESSION['count'] = $this->txtCount->Text;
		$cart->save();	
		$this->Response->redirect($this->Service->constructUrl("package.Cart"));

	}
    
}
