<?php
class RowAdminBlogsList extends TRepeaterItemRenderer{
	public function onInit($param){
		parent::onInit($param);

	}
	public function editMe($sender, $param){
		$id_encode64 = base64_encode($this->id->Value);
		$this->Response->redirect($this->Service->constructUrl("setting.NewBlog", array("id"=>$id_encode64)));
	}
// 	public function showDeletePanel($param,$sender){
// 		$this->pnlModalDelete->Visible = true;
// 	}
	public function deleteMe($param,$sender){
		$pro = HomeBlogRecord::finder()->find("hblog_id = ?" , $this->id->value);
		if($pro instanceof HomeBlogRecord){
			//0=not set/ 1 =delete
			$pro->status = 2;
			$pro->save();
			$this->Response->redirect($this->service->constructUrl("setting.BlogsList"));
		}
	}
	
}