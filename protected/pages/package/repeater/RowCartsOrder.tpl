
<tr>
    <td>
        <div class="product_count" style="direction: rtl;font-family: yekan;font-size: 16px;font-weight: bold;">		
            <%#$this->Data->count%>
        </div>
    </td>
    <td>
        <h5 style="direction: rtl;font-family: yekan;font-size: 16px;font-weight: bold;"><%#$this->Data->getProductPrice()%> تومان</h5>
    </td>
    <td>
        <div class="media">
            <div class="media-body">
            <p style="direction: rtl;font-size: 1em;float: right;font-weight: bold;font-family: yekan;"> &nbsp;&nbsp;&nbsp;&nbsp;توضیحات</p>
            <!-- <%#$this->Data->getProductDesc()%> -->
        </div>
        <div class="d-flex">
            <img style="width:9.3em;height: 7em;font-weight: bold;" src="<%#$this->Data->getProductImage()%>" alt="" />
        </div>
    </td>
</tr>
    