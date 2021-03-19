<div style="background-color:white;" class="col-lg-6 d-flex align-items-stretch ftco-animate">
	<com:TActiveHiddenField id="id" Value="<%#$this->Data->book_id%>" />
	<div class="blog-entry d-flex">
		<a class="block-20 img"
			style="height:250px;;margin-top:1.5em;background-size:cover;background-image: url(<%#$this->Data->pic_Path()%>)">
		</a>
		<div style="margin-top:1.5em" class="text p-4">
			<div class="meta">
				<p style="font-family:BYekan;text-align:right;direction:rtl"> 
					<span class="fa fa-mark"></span>
					امتياز goodreads: <%#$this->Data->goodreads_rating()%>
				</p>
			</div>
			<h5 style="font-family:BYekan;text-align:right;direction:rtl">
				<a href="#">
					<%#$this->Data->authorName()%> اثر <%#$this->Data->name()%>
				</a>
			</h5>
			<p style="font-family:BYekan;text-align:right;direction:rtl">
				<%#$this->Data->desc()%> 
			</p>
			<a style="font-family:BYekan;text-align:right;direction:rtl" href="<%=$this->Service->constructUrl("product.EachProduct",array("id"=>base64_encode($this->id->Value)))%>" class="btn-custom">ادامه و خرید کتاب
				<span class="fa fa-long-arrow-right"></span>
			</a>
		</div>
	</div>
</div>