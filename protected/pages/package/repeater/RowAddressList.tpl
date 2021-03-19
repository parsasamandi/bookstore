
<tr>
	<td>
		<com:TActiveHiddenField id="id" Value="<%#$this->Data->address_id%>"/>
		<com:TButton cssClass="buttonTest" OnClick="editMe">
		</com:TButton>
	</td>
	<td>
		<%#$this->Data->zip_code%>
	</td>
	<td>
		<div class="d-flex">
			<%#$this->Data->address%>
		</div>
	</td>
	<td>
		<%#$this->Data->city%>
	</td>
	<td>
		<%#$this->Data->province%>			
	</td>	
</tr>

<style>
	.buttonTest{
		height: 5%;
		width: 15%;  
		background-image:url('image/products/edit.png');
		background-size: 100% 100%;
		/* height: 630px; */
		/* src="image/icon/delete1.png" style="width:25px;" */
		background-repeat:no-repeat;
  }
</style>