<div class="col-md-3 d-flex">
	<div style="
		-webkit-box-shadow: -1px 1px 10px 6px lightgray;
		-moz-box-shadow: -1px 1px 10px 6px lightgray;
		box-shadow: -1px 1px 10px 6px lightgray;" class="product ftco-animate">
		<div class="img d-flex align-items-center justify-content-center" style="height:270px;background-size:cover;background-image: url(<%#$this->Data->pic_Path()%>)">
			<div class="desc">
				<p class="meta-prod d-flex">
					<com:TActiveHiddenField id="id" Value="<%#$this->Data->book_id%>" />
					<a data-toggle="modal" data-target="#ModalDelete<%#$this->Data->book_id%>" href="<%=$this->Service->constructUrl("shop.product.EachProduct",array("id"=>$this->id->Value))%>" class="d-flex align-items-center justify-content-center"><span style="font-size:30px" class="fa fa-shopping-cart"></span></a>
					<a href="<%=$this->Service->constructUrl("product.Products",array("id"=>base64_encode($this->id->Value)))%>" class="d-flex align-items-center justify-content-center"><span style="font-size:30px"
						class="fa fa-heart"></span></a>
					<a href="<%=$this->Service->constructUrl("product.EachProduct",array("id"=>base64_encode($this->id->Value)))%>" class="d-flex align-items-center justify-content-center"><span style="font-size:30px" class="fa fa-eye"></span></a>
				</p>
			</div>
		</div>
		<div class="text text-center">
			<a style="font-family:BYekan" class="seller persian"><%#$this->Data->getCat()%></a>
			<h2 style="font-family:BYekan" class="persian"><%#$this->Data->name()%></h2>
			<a href="<%=$this->Service->constructUrl("shop.product.EachProduct",array("id"=>$this->id->Value))%>" style="color:black;font-weight:bold">
				<p style="font-weight:bold" class="persian"><%#$this->Data->getDesc()%></p>
			</a>
			<p class="mb-0" style="font-family:BYekan;direction:rtl;text-align:right"><%#$this->Data->getPrice()%> تومان </p>
		</div>
	</div>
</div>

<div class="modal fade" id="ModalDelete<%#$this->Data->book_id%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
		<div class="modal-header">
			<h6 style="font-family:DiodrumArabicBold;color:black" class="modal-title" id="exampleModalLabel">افزودن به سبد خرید</h6>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div style="font-family:BYekan;text-align:right;direction:rtl;" class="modal-body modal_font">
			از محصول <%#$this->Data->name()%> به تعداد <com:TActiveTextBox id="txtCount" style="text-align:right" Attributes.placeholder="تعداد" /> سفارش میدهم 
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-danger" data-dismiss="modal" style=" float:left;font-size:13px;font-family:BYekan">
				<span class="glyphicon glyphicon-remove"></span>
				بازگشت
				</button>
			<com:TButton Text="تایید" cssclass="btn btn-warning" OnClick="addCart"
			style="float:left;background-color:#FFD700;font-family:BYekan" />
		</div>
		</div>
	</div>
</div>




