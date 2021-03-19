<?php
/**
 * Auto generated by PRADO - WSAT on 2020-07-20 11:28:17.
 * @author                
 */
class ProductCommentRecord extends TActiveRecord 
{       
	const TABLE='product_comment';

	public $productComment_id;
	public $u_id;
	public $book_id;
	public $status;
	public $idea;
	public $date;

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
	public function name()
	{
		$book = BooksRecord::finder()->find("book_id = ?",$this->book_id);
		if($book instanceof BooksRecord)
		{
			return $book->name;
		}
	}
	public function userName()
	{
		$user = UserRecord::finder()->find("u_id = ?",$this->u_id);
		if($user instanceof UserRecord)
		{
			return $user->name;
		}
	}
	public function userEmail()
	{
		$user = UserRecord::finder()->find("u_id = ?",$this->u_id);
		if($user instanceof UserRecord)
		{
			return $user->email;
		}
	}
	public function getPublisher()
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
}