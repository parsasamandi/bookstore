<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-20 11:28:17.
 * @author                
 */
class AuthorsRecord extends TActiveRecord 
{       
	const TABLE='authors';

	public $author_id;
	public $name;
	public $author_bio;
	public $_del;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public static $RELATIONS = array (
		'book_authors' => array(self::HAS_MANY, 'BookAuthorsRecord', 'author_id')
	);
                
	public function __toString() {
		return $this->name;
	}
}