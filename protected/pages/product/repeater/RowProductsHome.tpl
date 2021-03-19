<div style="margin-top:2em;height:410px;width:220px;padding-right:0.2em;padding-left:0.2em;padding-top:0;padding-bottom:0" class="carousel mt-3">
	<div style="background-color: white;margin-top:0.5em" class="product ftco-animate">
		<!-- background-color: #EEE; -->
		<div class="img d-flex align-items-center justify-content-center"
			style="height:230px;background-size:cover;background-image: url(<%#$this->Data->pic_Path()%>)">
			<div class="desc">
				<p class="meta-prod d-flex">
					<com:TActiveHiddenField id="id" Value="<%#$this->Data->book_id%>" />
					<a href="<%=$this->Service->constructUrl("product.EachProduct",array("id"=>base64_encode($this->id->Value)))%>" class="d-flex align-items-center justify-content-center"><span style="font-size:30px"
							class="fa fa-shopping-cart"></span></a>
					<a href="<%=$this->Service->constructUrl("product.Products",array("id"=>base64_encode($this->id->Value)))%>" class="d-flex align-items-center justify-content-center"><span style="font-size:30px"
							class="fa fa-heart"></span></a>
				</p>
			</div>
		</div>
		<div class="text text-center">
			<a class="seller persian"><%#$this->Data->getCat()%></a>
			<h5 style="text-align:right;" class="persian"><%#$this->Data->name()%></h5>

			<a href="<%=$this->Service->constructUrl("product.EachProduct",array("id"=>$this->id->Value))%>"
				style="color:black;font-weight:bold">
				<p style="font-weight:bold;color:gray;text-align:right" class="persian">
					<!-- نویسنده :
					<%#$this->Data->authorName()%> -->
					<!-- <br>
					نویسنده:
					<%#$this->Data->authorName()%> -->
					<%#$this->Data->getPrice()%> تومان
				</p>
			</a>
		</div>
	</div>
</div>

<style>
	.text:hover{
		padding-top:1.2em;
	}
</style>

