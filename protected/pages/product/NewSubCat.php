<?php
class NewSubCat extends TPage{
public function onInit($param){
		parent::onInit($param);
		//Check Access of user for this page from LimitationRecord DataBase Table.
		if(isset($_SESSION["session_admin"])){
			$admin = AccountRecord::finder()->find("acc_id = ? ",$_SESSION["session_admin"]);
			if(!($admin instanceof AccountRecord)){ 
				$this->Response->redirect($this->Service->constructUrl("login.AccessDenied")); 
			}
		}else{$this->Response->redirect($this->Service->constructUrl("login.AccessDenied"));}
		// End of Check Access of user for this page from LimitationRecord DataBase Table.

		
		$id_decode = base64_decode($this->Request["id"]);
		$sub_cat = SubCatRecord::finder()->find("sc_id = ?" , $id_decode);
		if($sub_cat instanceof SubCatRecord)
		{
            $this->txtName->Text = $sub_cat->name;
			if($sub_cat->status == 0)
				$this->dropStatus->SelectedValue = 0;
			else if($sub_cat->status  == 1)
				$this->dropStatus->SelectedValue = 1;
			else if($sub_cat->status  == 2)
				$this->dropStatus->SelectedValue = 2;	

			// $cats = CatRecord::finder()->find("c_id = ?",$sub_cat->c_id);
			// if($cats instanceof CatRecord){
			// 	$dataCat[] = array($cats->name,$cats->c_id);
			// }
			// $this->dropCat->DataSource = $dataCat;
			// $this->dropCat->dataBind();

			$cats = CatRecord::finder()->find("c_id = ?",$sub_cat->c_id);
			if($cats instanceof CatRecord){
				$this->txt_Cat->Text = $cats->name;
				$this->pnl_cat->enabled = false;
			}

		}
		$dataCat = array();
		$i = 1;
		$cats1 = CatRecord::finder()->findAll("status = ?",1);
		foreach($cats1 as $cat){
			$dataCat1[] = array($cat->name,$cat->c_id);
		}
		$this->dropCat->DataSource = $dataCat1;
		$this->dropCat->dataBind();



	}
	public function AddSubCat($sender,$param){
		$b  = false;
		$id_decode = base64_decode($this->Request["id"]);
		$cat = SubCatRecord::finder()->find("sc_id = ?",$id_decode);
		if(!($cat instanceof SubCatRecord)){
			$cat = new SubCatRecord();
			$b = true;
		}
		if($this->validateAddDevice($b)){	 
			$cat->name = $this->txtName->Text;
			//status drop
			$cat->status = $this->dropStatus->SelectedValue;
			$cat->c_id = $this->dropCat->SelectedValue;
			$cat->save(); 
			//pnlAdd
			$this->pnlAdd->Enabled=false;
			//pnlAfterAdd
			$this->pnlAfterAdd->Visible=true;
			$this->pnlAfterAddTop->Visible=true; 
		} 
	}
	public function validateAddDevice($b)
	{
		$l=true;
// 		if($b){
// 			if(strlen($this->txtProNum->Text) < 3)
// 			{
// 				$this->txtProNum->style="border-color:red;";
// 				$l =false;
// 			}else if(ProductRecord::finder()->find("pro_num = ?",$this->txtProNum->Text) instanceof ProductRecord){
// 				$this->txtProNum->style="border-color: yellow";
// 				$l = false;
// 			}else{
// 				$this->txtProNum->style="border-color:green;";
// 			}
// 		}
		return $l;
	}

	public function ShowList($sender,$param){
		$this->Response->redirect($this->service->constructUrl("equipment.EquipmentsList"));
	}
}