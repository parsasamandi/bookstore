<div style="margin-top:1.6em;" class="carousel-cell support_responsive">
    <div class="sort w-100 text-center ftco-animate">
        <com:TActiveHiddenField id="id" Value="<%#$this->Data->c_id%>" />
		<a href="<%=$this->Service->constructUrl("product.Products",array("cat"=>$this->id->Value))%>">
				<div class="img" style="background-image: url(<%#$this->Data->pic%>);">
					</div>
		</a>
		<a href="<%=$this->Service->constructUrl("product.Products",array("cat"=>$this->id->Value))%>">
			<h6 style="font-family:DiodrumArabicBold;color:black">
					<%#$this->Data->name%>
			</h6>
		</a>
    </div>
</div>

<style>
    @media screen and (min-width: 200px) and (max-width: 1250px) {
	
		.support_responsive{
			width: 50%;
		}
	}

	@media screen and (min-width: 500px) and (max-width: 1024px) {
		.support_responsive{
			width: 30%;
		}

	}
    @media screen and (min-width: 1259px) {
		.support_responsive{
			width: 15%;
		}
	}

</style>