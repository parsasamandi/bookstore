<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-20 11:28:17.
 * @author                
 */
class CartRecord extends TActiveRecord 
{       
	const TABLE='cart';

	public $ca_id;
	public $book_id;
	public $u_id;
	public $count;
	public $order_factor;

	public static function finder($className=__CLASS__) {
                return parent::finder($className);
	}
                
	public function __toString() {
		return $this->order_factor;
	}

	public function getProductName(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->name;
		}
	}
	public function getProductShbak(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->shabak;
		}
	}
	public function getProductPrice(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id); 
		if($book instanceof BooksRecord)
		{
			return number_format($book->price);
		}
	}
	public function getProductImage(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->pic_path;
		}
	}
	public function publisher_year(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof ProductRecord)
		{
			return $book->publisher_year;
		}
	}

	public function getProductCat1(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			$cat = CatRecord::finder()->find("c_id = ?",$book->c_id);
			if($cat instanceof CatRecord)
				return $cat->name;
		}
	}
	public function getProductCat2(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			$subcat = SubCatRecord::finder()->find("sc_id = ?",$book->sub_cat);
			if($subcat instanceof SubCatRecord)
				return $subcat->name;
		}
	}
	public function getProductDesc(){
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->desc;
		}
	}
	public function getName(){
		$user = UserRecord::finder()->find("u_id = ?",$this->u_id);
		if($user instanceof UserRecord)
		{
			if($user->sex == 1)
				return "???????? - " . $user->name;
			else if($user->sex == 2)
				return "???????? - " . $user->name;
			else if($user->sex == 0)
				return $user->name;
		}
	}
	public function getAuthor()
	{
		$bookAuthors = BookAuthorsRecord::finder()->find("book_id = ?",$this->book_id);
		if($bookAuthors instanceof BookAuthorsRecord)
		{
			$author = AuthorsRecord::finder()->find("author_id = ?",$bookAuthors->author_id);
			if($author instanceof AuthorsRecord)
			{
				return $author->name;
			}
		}
	}
	public function Publisher()
	{
		$bookAuthors = BookAuthorsRecord::finder()->find("book_id = ?",$this->book_id);
		if($bookAuthors instanceof BookAuthorsRecord)
		{
			$book = BooksRecord::finder()->find("book_id = ?",$bookAuthors->book_id);
			if($book instanceof BooksRecord)
			{
				$publisher = PublisherRecord::finder()->find("publisher_id = ?",$book->publisher_id);
				if($publisher instanceof PublisherRecord)
				{
					return $publisher->publisher_name;
				}
			}
		}
	}
}