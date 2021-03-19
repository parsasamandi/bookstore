<tr class="even pointer" style="color:#415567;">
<!-- 	#  -->
	<td style="border-top: 1px solid #415567;">
		<%#$this->ItemIndex + 1 + $this->parent->CurrentPageIndex*$this->parent->pageSize%>
		<com:TActiveHiddenField id="id" Value="<%#$this->Data->publisher_id%>" />
	</td>

<!--  name  -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			 <%#$this->Data->publisher_name%>
		</p>
	</td>


	<!-- 	edit	 -->
	<td style="text-align: center;border-top: 1px solid #415567;">
		<com:TButton Cssclass="btn btn-round btn-default" style="background-color: #415567;font-size:12px;font-family:yekan;color:#ecf0f1;margin:0px auto; display: block;"
			onClick="editMe" Text="ویرایش"/>
	</td>
	
	<!-- 	delete	 -->
	<td style="text-align: center;border-top: 1px solid #415567;">
		<a data-toggle="modal" data-target="#ModalDelete<%#$this->Data->publisher_id%>">
			<img src="image/icon/delete1.png" style="width:25px;" title=" حذف " />
		</a>
		<div class="modal fade" id="ModalDelete<%#$this->Data->publisher_id%>" tabindex="-1" role="dialog"
			aria-labelledby="ModalInfo">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button style="float:left;" type="button" class="close"
							data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;
							</span>
						</button>
						<h4 class="modal-title" id="myModalLabel" style=" font-family: yekan; font-size: 15px;">
							<span class="glyphicon glyphicon-trash"></span>
							حذف ناشر
						</h4>
		
					</div>
					<div class="modal-body" style="height:170px;">
						<p style=" font-family: yekan; font-size: 15px;">
							برای حذف ناشر
							</p>
							<p style=" font-family: yekan; font-size: 15px;"><b>  نام : <%#$this->Data->publisher_name%> </b></p>
							<p style=" font-family: yekan; font-size: 15px;"><b>  کد محصول : <%#$this->Data->publisher_id%></b></p> 
							<p style=" font-family: yekan; font-size: 15px;">مطمئن هستید ؟</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal"
							style=" float:left;">
							<span class="glyphicon glyphicon-remove"></span>
							خیر
						</button>
						<com:TButton Text="بله,حذف شود" cssclass="btn btn-danger" OnClick="deleteMe" style="float:left;"/>
					</div>
				</div>
			</div>
		</div>
	</td>
</tr>