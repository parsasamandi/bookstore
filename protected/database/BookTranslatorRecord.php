<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-18 12:03:32.
 * @author                
 */
class BookTranslatorRecord extends TActiveRecord 
{       
	const TABLE='book_translator';

	public $_del;
	public $bookTranslator_id;
	public $book_id;
	public $translator_id;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public static $RELATIONS = array (
		'translator' => array(self::BELONGS_TO, 'TranslatorRecord', 'translator_id'),
		'books' => array(self::BELONGS_TO, 'BooksRecord', 'book_id')
	);
                
	// public function __toString() {
	// 	return $this->throw new THttpException(500, 'Not implemented yet.');;
	// }
	
}