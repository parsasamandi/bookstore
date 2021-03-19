<?php
class RowComments extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);

    }

    public function deleteMe($param,$sender){ 
		$id = $this->id->Value;
		$comment = CommentRecord::finder()->find("comment_id = ?",$id);
		if($comment instanceof CommentRecord)
		{
			$comment->delete();
            $this->Response->redirect($this->Service->constructUrl("comment.UserCommentList"));
		}   
	}

   
    
}
