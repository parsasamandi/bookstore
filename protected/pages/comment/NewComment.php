<?php
class NewComment extends TPage{
    public function onInit($param)
    {
        $home_setting2 = HomeSettingRecord::finder()->find("name = ?","slider3_img");
		if($home_setting2 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_img->Text = $home_setting2->value;
        }

        $home_setting8 = HomeSettingRecord::finder()->find("name = ?","slider1shop_title");
		if($home_setting8 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_title->Text = $home_setting8->value;
        }
        $home_setting6 = HomeSettingRecord::finder()->find("name = ?","slider1shop_desc");
		if($home_setting6 instanceof HomeSettingRecord)
		{
			$this->lit_slider1_desc->Text = $home_setting6->value;
        }
		
    }
    public function send($sender,$param){
		$comment = new CommentRecord();
		$comment->name = $this->txtSender->Text;
		$comment->message = $this->htmlAreaDesc->Text;
		$comment->title = $this->title->Text;
		$comment->u_id = $_SESSION{'session_user_digi'};
		$comment->status = 0;
		$comment->save();
		$this->pnlAfterAdd->Visible=true;
	}
   
}

