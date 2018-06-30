<table class="table table-bordered catalog-property-table" id="skuProValTable${skuProperty.id}">
	<thead>
		<tr class="active">
			<th colspan="3">${skuProperty.name}</th>
		</tr>
		<tr>
			<th></th>
			<th>值</th>
			<th>图片</th>
		</tr>
	</thead>
	<tbody>
		<#list skuPropertyValue as data>
			<tr>
				<td>
					<button class="btn btn-default" type="button" onclick="deleteSkuPropertyTr(this)">
						— 移除
					</button>
				</td>
				<td>
					<input type="text" class="form-control sku-pro-val" value="${data.value}"/>
				</td>
				<td>
					<input type="file"/>
				</td>
			</tr>
		</#list>
	</tbody>
	<tfoot>
		<tr>
			<th colspan="3">
				<button class="btn btn-default" type="button" onclick="addSkuPropertyTr(${skuProperty.id})">
					+ 添加
				</button>
			</th>
		</tr>
	</tfoot>
</table>








