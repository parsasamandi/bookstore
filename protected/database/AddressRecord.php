<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-20 11:28:17.
 * @author                
 */
class AddressRecord extends TActiveRecord 
{       
	const TABLE='address';

	public $address_id;
	public $u_id;
	public $province;
	public $city;
	public $area;
	public $address;
	public $zip_code;
	public $phone;
	public $mobile_phone;
	public $status;
	public $_del;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public static $RELATIONS = array (
		'user' => array(self::BELONGS_TO, 'UserRecord', 'u_id'),
		'order1' => array(self::HAS_MANY, 'Order1Record', 'address_id')
	);
                
	public function __toString() {
		return $this->province;
	}
}