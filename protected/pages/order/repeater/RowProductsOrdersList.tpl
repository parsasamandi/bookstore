<tr class="even pointer" style="color:#415567;background-color:<%#$this->Data->getStatus()%>">

    <td style="border-top: 1px solid #415567;">
        <p style="text-align: center;"> 
            <img src="<%#$this->Data->getProductImage()%>" style="width: 50px;" />
        </p>
    </td>	

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			<%#$this->Data->getProductName()%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			 <%#$this->Data->getProNum()%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->getProductCompany()%>
		</p>
	</td>
	
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center; font-family: none ;">
			<%#$this->Data->getProductModel()%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center; font-family:none;">
			<%#$this->Data->getProductPrice()%>
		</p>
	</td>	


	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
            <%#$this->Data->getProductCat1()%>

		</p>
	</td>
	<td style="text-align: center;border-top: 1px solid #415567;">
        <%#$this->Data->getProductCat2()%>
	</td>		
</tr>