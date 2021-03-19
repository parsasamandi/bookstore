<div class="col-md-3 col-sm-3 col-xs-3">
	<div class="thumbnail" style="height:340px;">
		<img src="<%#$this->Data->getImage()%>" alt="..." class="team-img" style="width:215px;height:200px;"/>
		<div class="caption" style="font-family:yekan;color:#5ab8b6;">
		<p><%#$this->Data->name%><p>
		<com:TActiveHiddenField id="id" Value="<%#$this->Data->p_id%>" />
		<div class="col-md-12 col-sm-12 col-xs-12"> 
			<div class="col-md-3 col-sm-3 col-xs-3" style="float:left; padding: 0px;">
				<a href="<%=$this->Service->constructUrl("product.EachProduct",array("id"=>$this->id->Value))%>">
					<button type="button" class="btn btn-info"
						style=" float:left;">
						<i class="fa fa-ellipsis-h"></i>
					</button>
				</a>
			</div>	
			<div class="col-md-9 col-sm-9 col-xs-9" style="float:right; padding: 0px;">
				<a data-toggle="modal" data-target="#ModalDelete<%#$this->Data->p_id%>"> 
				 	<button type="button" class="btn btn-info"
						style=" float:left;">
						<span class="glyphicon glyphicon-shopping-cart"></span>
						 <com:TLiteral id="lit"/>افزودن به سبد خرید
					</button>
				</a>
			</div>
		</div>
		</div>
	</div>
</div>
<!-- 	delete	 --> 
<div class="modal fade" id="ModalDelete<%#$this->Data->p_id%>" tabindex="-1" role="dialog"
	aria-labelledby="ModalInfo" style="direction:rtl;font-family:yekan;">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button style="float:left;" type="button" class="close"
					data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;
					</span>
				</button>
				<h4 class="modal-title" id="myModalLabel" style=" font-family: yekan; font-size: 15px;">
					<span class="glyphicon glyphicon-shopping-cart"></span>
					افزودن به سبد خرید
				</h4>
			</div>
			<div class="modal-body" style="height:110px;">
				<p style=" font-family: yekan; font-size: 15px;">
					تکمیل اطلاعات :
				</p>
				<div class="col-md-5 col-sm-5 col-xs-5" style="float:right; padding: 0px;">
					<p style=" font-family: yekan; font-size: 15px;">
						از محصول 
						<b><%#$this->Data->getName()%>
						به تعداد  
					</p>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-2" style="float:right; padding: 0px;">
					<p style=" font-family: yekan; font-size: 15px;">  
			 			<com:TActiveTextBox id="txtCount" Cssclass="form-control"
						style="font-size:15px;font-family:Yekan;direction: rtl;" Attributes.placeholder="تعداد" />
			 		</p>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3" style="float:right; padding: 0px;">
					<p style=" font-family: yekan; font-size: 15px;"> 
						 سفارش میدهم
					</p> 
				</div> 
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-dismiss="modal"
					style=" float:left;font-size:13px;">
					<span class="glyphicon glyphicon-remove"></span>
					بازگشت
				</button>
				<com:TButton Text="تایید" cssclass="btn btn-info" OnClick="addCart" style="float:left;"/>
			</div>
		</div>
	</div>
</div>