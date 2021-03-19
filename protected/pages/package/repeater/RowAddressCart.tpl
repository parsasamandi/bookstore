<ul style="font-family:BYekan;text-align:right" class="list-group list-group-flush">
	<li style="font-family:BYekan;text-align:right"
		class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
			<div class="radion_btn">
          <com:TActiveHiddenField id="id" Value="<%#$this->Data->address_id%>" />
          <com:TButton Cssclass="fa fa-circle" style="background-color:white;border-radius:30px;width:1.5em" OnClick="address" ID="buttontest"/>
			</div>
		<%#$this->Data->address%>
	</li>
	<a style="color:orange" href="<%=$this->Service->constructUrl("package.NewAddress",array("id"=>$this->id->Value))%>">تغییر آدرس</a> 
	<a style="color:orange" href="<%=$this->Service->constructUrl("package.NewAddress")%>">اضافه کردن آدرس</a>
	
</ul>
<hr>


<style>
	.container1 {
      display: block;
      position: relative;
      padding-left: 35px;
      margin-bottom: 12px;
      cursor: pointer;
      font-size: 18px;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    .container1 input {
      position: absolute;
      opacity: 0;
      cursor: pointer;
    }

    .checkmark {
      position: absolute;
      top: 0;
      left: 0;
      height: 20px;
      width: 20px;
      background-color: #eee;
      border-radius: 50%;
    }

    .container1:hover input~.checkmark {
      background-color: #ccc;
    }

    .container1 input:checked~.checkmark {
      background-color: #FFD700;
    }

    .checkmark:after {
      content: "";
      position: absolute;
      display: none;
    }

    .container1 input:checked~.checkmark:after {
      display: block;
    }





</style>