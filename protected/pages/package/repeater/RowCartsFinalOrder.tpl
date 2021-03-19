<div class="row mb-4">
    <div class="col-md-5 col-lg-3 col-xl-3">
        <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
            <a href="#!">
                <div class="mask waves-effect waves-light">
                    <img style="width:100%;max-height:100%" src="<%#$this->Data->getProductImage()%>"
                        alt="عکسی برای نمایش وجود ندارد">
                    <div class="mask rgba-black-slight waves-effect waves-light"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-md-7 col-lg-9 col-xl-9">
        <div>
            <div class="d-flex justify-content-between">
                <div>
                    <h4 style="font-family:BYekan;text-align:right;margin-left:1em"
                        class="mb-3 text-muted text-uppercase">تعداد: <%#$this->Data->count%></h4>
                </div>
                <div>
                    <h5 style="font-family:BYekan"><%#$this->Data->getProductName()%></h5>
                    <p style="font-family:BYekan;direction:rtl" class="mb-3 text-muted text-uppercase small">
                        دسته بندی : <%#$this->Data->getProductCat1()%>
                    </p>
                </div>
            </div>
            <div class="d-flex justify-content-between align-items-center">
                <div>
                </div>
                <p style="font-family:BYekan;direction:rtl" class="mb-0"><span><strong>
                            <%#$this->Data->getProductPrice()%> تومان</strong></span>
                </p>
            </div>
        </div>
    </div>
</div>
<hr class="mb-4">