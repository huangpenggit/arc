<#list productCatalogPropertyList as vo>
    <tr>
        <td>
        	${vo.catalogPropertyName}
        	<input type="hidden"  name="propertys[${vo_index}].name" value="${vo.catalogPropertyName}">
        </td>
        <td>
            <#if vo.type == 2>
                <select class="form-control" name="propertys[${vo_index}].value">
                    <#list vo.propertyValueList as v>
                        <option value="${v.value}">${v.value}</option>
                    </#list>
                </select>
            <#elseif  vo.type == 0>
                 <input name="propertys[${vo_index}].value" class="form-control">
            <#else>
            </#if>
        </td>
    </tr>
</#list>