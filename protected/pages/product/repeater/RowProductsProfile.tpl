<div class="col-md-3 d-flex">
    <!-- #f5f5f5 -->
    <div style="
	-webkit-box-shadow: -1px 1px 10px 6px lightgray;
	-moz-box-shadow: -1px 1px 10px 6px lightgray;
    box-shadow: -1px 1px 10px 6px lightgray;height:380px" class="product ftco-animate">
        <div class="img d-flex align-items-center justify-content-center"style="background-size:cover;height:200px;background-image: url(<%#$this->Data->pic_Path()%>)">
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
            <a style="font-family:BYekan;" class="seller persian"><%#$this->Data->getCat()%></a>
            <h2 class="persian"><%#$this->Data->name()%></h2>
            <br>
            <p class="mb-0" style="font-family:BYekan;direction:rtl;text-align:center">
                <a style="font-family:BYekan;background-color:white;color:red;" class="btn1 draw-border responsive_font" href="<%=$this->Service->constructUrl("product.EachProduct",array("id"=>base64_encode($this->id->Value)))%>">خرید <i class="fa fa-shopping-cart"></i></a>
            </p>
        </div>
        <br>
    </div>
</div>



<style>
    .draw-border {
        box-shadow: inset 0 0 0 4px #FFD700;
        color: black;
        -webkit-transition: color 0.25s 0.0833333333s;
        transition: color 0.25s 0.0833333333s;
        position: relative;
    }

    .draw-border::before,
    .draw-border::after {
        border: 0 solid transparent;
        box-sizing: border-box;
        content: "";
        pointer-events: none;
        position: absolute;
        width: 0;
        height: 0;
        bottom: 0;
        right: 0;
    }

    .draw-border::before {
        border-bottom-width: 4px;
        border-left-width: 4px;
    }

    .draw-border::after {
        border-top-width: 4px;
        border-right-width: 4px;
    }

    .draw-border:hover {
        color: red;
    }

    .draw-border:hover::before,
    .draw-border:hover::after {
        border-color: red;
        -webkit-transition: border-color 0s, width 0.25s, height 0.25s;
        transition: border-color 0s, width 0.25s, height 0.25s;
        width: 100%;
        height: 100%;
    }

    .draw-border:hover::before {
        -webkit-transition-delay: 0s, 0s, 0.25s;
        transition-delay: 0s, 0s, 0.25s;
    }

    .draw-border:hover::after {
        -webkit-transition-delay: 0s, 0.25s, 0s;
        transition-delay: 0s, 0.25s, 0s;
    }

    .btn1 {
        background: none;
        border: none;
        cursor: pointer;
        line-height: 1.5;
        font: 700 1.2rem "Roboto Slab", sans-serif;
        padding: 1em 2em;
        letter-spacing: 0.05rem;
        font-family: 'BYekan';
    }

    .btn1:focus {
        outline: 1px dotted #FFD700;
    }

    @media screen and (min-width:768px) and (max-width:993px)
    {
        .responsive_font{
            font-size:12px;
        }

    }
</style>