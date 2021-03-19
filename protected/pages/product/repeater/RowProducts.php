<?php
class RowProducts extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);  
	}

	public function more($sender, $param){
// 		$this->Response->redirect($this->Service->constructUrl("product.Products"));
// 		$id_encode64 = base64_encode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("product.EachProduct", array("id"=>$this->id->Value)));
	}
	public function addCart($sender, $param){
		$cart = new CartRecord();
		$cart->book_id = $this->id->Value;
        $cart->count = $this->txtCount->Text;
        if(isset($_SESSION["session_user_digi"])){
			$user = UserRecord::finder()->find("u_id = ? ",$_SESSION["session_user_digi"]);
			if($user instanceof UserRecord){
				$cart->u_id = $_SESSION['session_user_digi'];
				$cart->save();
		        $this->Response->redirect($this->Service->constructUrl("package.Cart"));
			}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
		}else{
			$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));
		}
	}
	
	/*
	 * https://thisinterestsme.com/store-array-session-php/
	 * <?php
		
		//Start your session.
		session_start();
		
		//A simple array that contains product IDs.
		$cartArray = array(
		    123,
		    12,
		    490
		);
		
		//Store the array in a session variable called "cart"
		$_SESSION['cart'] = $cartArray;
		
		//Dump out the session variable, just to
		//see what it looks like.
		var_dump($_SESSION['cart']);
		
		
		<?php
		 
		//Start your session.
		session_start();
		 
		//Make sure that the session variable actually exists!
		if(isset($_SESSION['cart'])){
		    //Loop through it like any other array.
		    foreach($_SESSION['cart'] as $productId){
		        //Print out the product ID.
		        echo $productId, '<br>';
		    }
		}
	 */
}