<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-20 11:28:17.
 * @author                
 */
class LikeRecord extends TActiveRecord 
{       
	const TABLE='like';

	public $like_id;
	public $u_id;
	public $book_id;
	public $status;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public static $RELATIONS = array (
		'books' => array(self::BELONGS_TO, 'BooksRecord', 'book_id'),
		'user' => array(self::BELONGS_TO, 'UserRecord', 'u_id')
	);
                
	public function __toString() {
		return $this->like_id;
	}
}