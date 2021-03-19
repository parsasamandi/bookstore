<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-18 12:03:32.
 * @author                
 */
class BookAuthorsRecord extends TActiveRecord 
{       
	const TABLE='book_authors';

	public $_del;
	public $bookAuthors_id;
	public $book_id;
	public $author_id;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public static $RELATIONS = array (
		'authors' => array(self::BELONGS_TO, 'AuthorsRecord', 'author_id'),
		'books' => array(self::BELONGS_TO, 'BooksRecord', 'book_id')
	);
                
	// public function __toString() {
	// 	return $this->throw new THttpException(500, 'Not implemented yet.');;
	// }
	public function pic_Path()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->pic_path;
		}
	}
	public function picPath1()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->pic_path1;
		}
	}
	public function picPath2()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->pic_path2;
		}
	}
	public function goodreads_rating()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->goodreads_rating;
		}
	}
	public function desc()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->desc;
		}
	}
	public function getCat()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			$cat = CatRecord::finder()->find("c_id = ?",$book->c_id);
			if($cat instanceof CatRecord)
			{
				return $cat->name;
			}
		}
	}
	public function getSubCat()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			$subCat = SubCatRecord::finder()->find("sc_id = ?",$book->sub_cat);
			if($subCat instanceof SubCatRecord)
			{
				return $subCat->name;
			}
		}
	}
	public function name()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->name;
		}
	}
	public function authorName()
	{
		$author = AuthorsRecord::finder()->find("author_id = ?",$this->author_id);
		if($author instanceof AuthorsRecord)
		{
			return $author->name;
		}
	}
	public function Publisher()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			$publisher = PublisherRecord::finder()->find("publisher_id = ?",$book->publisher_id);
			if($publisher instanceof PublisherRecord)
			{
				return $publisher->publisher_name;
			}
		}
	}
	public function getPrice()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->price;
		}
	}
}