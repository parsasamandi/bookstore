<div class="dropdown-item d-flex align-items-start" href="#">
    <div class="img" style="background-image: url(images/prod-1.jpg);"></div>
    <div class="text pl-3">
        <h4 style="font-family:BYekan;font-weight:bold">
            <%#$this->Data->getProductName()%>
        </h4>
        <p class="mb-0">
            <a style="font-family:BYekan;direction:rtl;" href="#" class="price">
                قیمت:
                <%#$this->Data->getProductPrice()%> تومان
            </a>
            <br>
            <span style="font-family:BYekan" class="quantity ml-3">
                مقدار :
                <%#$this->Data->count%>
            </span>
        </p>
    </div>
</div>