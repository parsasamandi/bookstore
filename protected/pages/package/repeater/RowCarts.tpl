<div class="row mb-4">
    <div class="col-md-5 col-lg-3 col-xl-3">
        <div class="view zoom overlay z-depth-1 rounded mb-3 mb-md-0">
            <a href="#!">
                <div class="mask waves-effect waves-light">
                    <img class="img-fluid w-100" src="<%#$this->Data->getProductImage()%>">
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
                    <p style="font-family:BYekan;direction:rtl" class="mb-3 text-muted text-uppercase small">دسته بندی :
                        <%#$this->Data->getProductCat1()%> </p>
                </div>
            </div>
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    &nbsp;
                    <!-- <com:TButton Cssclass="btn btn-danger" Text="حذف"
                        style="font-family: yekan;color:white;direction:rtl;margin-left:0.5em;text-align:left;" Onclick="deleteMe" />  -->
                        <a data-toggle="modal" data-target="#ModalDelete<%#$this->Data->ca_id%>" style="margin-left:0.8em;text-align:left;">
                            <img src="image/icon/delete1.png" style="width:25px;" title=" حذف " />
                        </a>
                    &nbsp;
                </div>
                <com:TActiveHiddenField id="id" Value="<%#$this->Data->ca_id%>"/>
                <p style="font-family:BYekan;direction:rtl" class="mb-0"><span><strong>
                        <%#$this->Data->getProductPrice()%> تومان</strong></span>
                </p>
            </div>
        </div>
    </div>
</div>
<hr class="mb-4">

<div class="modal fade" id="ModalDelete<%#$this->Data->ca_id%>" tabindex="-1" role="dialog"
    aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 style="font-family:DiodrumArabicBold;color:black" class="modal-title">افزودن به سبد خرید</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div style="font-family:BYekan;text-align:right;direction:rtl;" class="modal-body modal_font">
                آیا از حذف محصول مطمئن هستید؟
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal"
                    style=" float:left;font-size:13px;font-family:BYekan">
                    <span class="glyphicon glyphicon-remove"></span>
                    بازگشت
                </button>
                <com:TButton Text="تایید" cssclass="btn btn-warning" OnClick="deleteMe"
                    style="float:left;background-color:#FFD700;font-family:BYekan" />
            </div>
        </div>
    </div>
</div>