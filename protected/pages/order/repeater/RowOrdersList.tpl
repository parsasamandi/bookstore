<tr class="even pointer" style="color:#415567;">

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			 <%#$this->Data->getName()%>
		</p>
	</td>	


	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			<%#$this->Data->transportation%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;"> 
			 <%#$this->Data->payment%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			<%#$this->Data->getNumber()%>
		</p>
	</td>
	
	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center; font-family: none ;">
			<%#$this->Data->getAddress()%>
		</p>
	</td>

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center; font-family:none;">
			<%#$this->Data->getCity()%>
		</p>
	</td>	

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center; font-family:none;">
			<%#$this->Data->getZipCode()%>
		</p>
	</td>	

	<td style="border-top: 1px solid #415567;">
		<p style="text-align: center;">
			 <%#$this->Data->order_factor%>
		</p>
	</td>
	<td style="text-align: center;border-top: 1px solid #415567;">
		<%#$this->Data->totalprice%>
	</td>	
	<td style="text-align: center;border-top: 1px solid #415567;">
		<com:TActiveHiddenField id="id" Value="<%#$this->Data->o_id%>"/>
		<com:TActiveHiddenField id="user_id" Value="<%#$this->Data->u_id%>"/>
		<com:TButton Cssclass="btn btn-round btn-default" style="background-color: #415567;font-size:12px;font-family:yekan;color:#ecf0f1;margin:0px auto; display: block;"
			OnCLick="EachOrder" Text="..."/>
	</td>	
</tr>