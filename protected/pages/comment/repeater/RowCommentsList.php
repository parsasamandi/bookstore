    <?php
class RowCommentsList extends TRepeaterItemRenderer{
    public function onInit($param){
        parent::onInit($param);
        $this->pnlAfterAdd->Visible=false; 


    }
    public function editMe($sender, $param){
        $id_encode64 = base64_encode($this->id->Value);
        $this->Response->redirect($this->Service->constructUrl("comment.EditComment", array("id"=>$id_encode64)));
    }

    public function deleteMe($param,$sender){ 
		$id = $this->id->Value;
		$comment = CommentRecord::finder()->find("comment_id = ?",$id);
		if($comment instanceof CommentRecord)
		{
            $comment->delete();
            $this->Response->redirect($this->Service->constructUrl("comment.CommentList"));
		}   
	}
    public function more($sender, $param){
        $id_encode64 =  $this->id->Value;
        $this->Response->redirect($this->Service->constructUrl("product.EachProduct", array("id"=>$id_encode64)));
    }
    public function Submit($sender,$param)
    {
        $com = CommentRecord::finder()->find("comment_id = ?",$this->id->Value);
		if($com instanceof CommentRecord)
		{
            $com->status = 1;
            $com->save();
            $this->pnlAfterAdd->Visible=true; 
        }

    }
   
    
}
