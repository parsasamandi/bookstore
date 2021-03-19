<tr class="even pointer" style="background-color:#e6e9ed;color:#415567;">
<!-- 	#  -->
	<td style="border-top: 1px solid #415567;">
		<%#$this->ItemIndex + 1 + $this->parent->CurrentPageIndex*$this->parent->pageSize%>
		<com:TActiveHiddenField id="id"  Value="<%#$this->Data->ca_id%>" /> 
	</td>
<!-- 	image  -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<img src="<%#$this->Data->getProductImage()%>" style="width: 50px;" />
		</p>
	</td>
<!--  name  -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			<%#$this->Data->getProductName()%>
		</p>
	</td>
<!-- code  -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->getProductCode()%>
		</p>
	</td>
<!-- count  -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->count%>
		</p>
	</td>
<!-- price  -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->getProductPrice()%>
		</p>
	</td> 
<!-- company -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			 <%#$this->Data->getProductCompany()%>
		</p>
	</td>
<!-- model -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			 <%#$this->Data->getProductModel()%>
		</p>
	</td> 
<!-- cat -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->getProductCat1()%>
		</p>
	</td>
<!-- sub cat -->
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->getProductCat2()%>
		</p>
	</td> 
	 
</tr>