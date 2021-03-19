<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-20 11:28:17.
 * @author                
 */
class OrderRecord1 extends TActiveRecord 
{       
	const TABLE='order1';

	public $o_id;
	public $address_id;
	public $u_id;
	public $order_factor;
	public $totalprice;
	public $book_id;
	public $count;
	public $transportation;
	public $payment;
	public $status;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public static $RELATIONS = array (
		'address' => array(self::BELONGS_TO, 'AddressRecord', 'address_id'),
		'books' => array(self::BELONGS_TO, 'BooksRecord', 'book_id'),
		'user' => array(self::BELONGS_TO, 'UserRecord', 'u_id')
	);
                
	public function __toString() {
		return $this->order_factor;
	}
	//  public function getProductName(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->name;
		// 	}
		// }
		// public function getProductCode(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->pro_num;
		// 	}
		// }
		// public function getProductPrice(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->price;
		// 	}
		// }
		// public function getProductImage(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->pic_path;
		// 	}
		// }
		// public function getProductModel(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->model;
		// 	}
		// }
		// public function getProNum(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->pro_num;
		// 	}
		// }
		
		// public function getProductCompany(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->company;
		// 	}
		// }
		public function getProductTest(){
			$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
			if($book instanceof BooksRecord)
			{
				$cat = CatRecord::finder()->find("c_id = ?",$book->c_id);
				if($cat instanceof CatRecord)
					return $cat->name;
			}
		}
		// public function getProductCat2(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		$subcat = SubCatRecord::finder()->find("sc_id = ?",$pro->sub_cat);
		// 		if($subcat instanceof SubCatRecord)
		// 			return $subcat->name;
		// 	}
		// }
		// public function getProductDesc(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->desc;
		// 	}
		// }
		// public function getModel(){
		// 	$pro = ProductRecord::finder()->find("p_id = ?",$this->product_id);
		// 	if($pro instanceof ProductRecord)
		// 	{
		// 		return $pro->model;
		// 	}
			
		// }
		public function getName(){
			$user = UserRecord::finder()->find("u_id = ?",$this->u_id);
			if($user instanceof UserRecord)
			{
				return $user->name;
			}
		}
		public function getAddress(){
			$addr = AddressRecord::finder()->find("address_id = ?",$this->address_id);
			if($addr instanceof AddressRecord)
			{
				return $addr->address;
			}
			
		}
		public function getCity(){
			$addr = AddressRecord::finder()->find("address_id = ?",$this->address_id);
			if($addr instanceof AddressRecord)
			{
				return $addr->city;
			}
			
		}
		public function getZipCode(){
			$addr = AddressRecord::finder()->find("address_id = ?",$this->address_id);
			if($addr instanceof AddressRecord)
			{
				return $addr->zip_code;
			}
		}
		public function getNUmber(){
			$addr = AddressRecord::finder()->find("address_id = ?",$this->address_id);
			if($addr instanceof AddressRecord)
			{
				return $addr->mobile_phone;
			}
		}
		// public function total_price(){
		// 	return number_format($totalprice);
			
		// }
	
}