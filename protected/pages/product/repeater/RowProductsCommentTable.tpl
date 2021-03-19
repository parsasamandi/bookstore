<com:TActiveHiddenField id="id" Value="<%#$this->Data->productComment_id%>"/>
<tr class="even pointer" style="color:#415567;">
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			 <%#$this->Data->name()%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
        <p style="text-align: right;direction:rtl">
            <%#$this->Data->idea%>
		</p>
	</td>


    <td style="text-align: center;border-top: 1px solid #415567;">
        <a data-toggle="modal" data-target="#ModalDelete<%#$this->Data->productComment_id%>">
			<img src="image/icon/delete1.png" style="width:25px;" title=" حذف " />
		</a>
	</td>
</tr>
<div class="modal fade" id="ModalDelete<%#$this->Data->productComment_id%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h6 style="font-family:DiodrumArabicBold;color:black" class="modal-title">افزودن به سبد خرید</h6>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div style="font-family:BYekan;text-align:right;direction:rtl;" class="modal-body modal_font">
			آیا از حذف نظر <%#$this->Data->name()%> مطمئن هستید؟
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-danger" data-dismiss="modal" style=" float:left;font-size:13px;font-family:BYekan">
				<span class="glyphicon glyphicon-remove"></span>
				بازگشت
			  </button>
			<com:TButton Text="تایید" cssclass="btn btn-warning" OnClick="deleteMe"
			style="float:left;background-color:#FFD700;font-family:BYekan" />
		</div>
	  </div>
	</div>
  </div>


