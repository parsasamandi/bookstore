<?php
class logout extends TPage{
        public function onInit($param){
                parent::onInit($param); 
                $_SESSION["session_user_digi"] = "";
                $this->Response->redirect($this->Service->constructUrl("home"));
        }  	
} 
