
{if $billers == ""}
<P><em>$mb_no_invoices.</em></p>"
{else}



	<b>{#mb_page_header#} :: <a href='index.php?module=billers&view=add'>{#mb_actions_new_biller#}</a></b>
	<hr></hr>
	<table class="ricoLiveGrid manage" id="rico_biller" align="center">
<colgroup>
<col style='width:15%;' />
<col style='width:10%;' />
<col style='width:40%;' />
<!--
<col style='width:10%;' />
<col style='width:10%;' />
-->
<col style='width:25%;' />
<col style='width:10%;' />
</colgroup>
<thead>
<tr class="sortHeader">
<th class="noFilter sortable">{#mb_table_action#}</th>
<th class=" index_table sortable">{#mb_table_biller_id#}</th>
<th class="index_table sortable">{#mb_table_biller_name#}</th>
<!--
<th class="index_table">$mb_table_phone</th>
<th class="index_table">$mb_table_mobile_phone</th>
-->
<th class="index_table sortable">{#mb_table_email#}</th>
<th class="noFilter index_table sortable">{#wording_for_enabledField#}</th>
</tr>
</thead>
{foreach from=$billers item=biller}

	<tr class='index_table'>
	<td class='index_table'>
	<a class='index_table' href='index.php?module=billers&view=details&submit={$biller.b_id}&action=view'>
	{#mb_actions_view#}</a>
	 :: 
	<a class='index_table' href='index.php?module=billers&view=details&submit={$biller.b_id}&action=edit'>
	{#mb_actions_edit#}</a></td>
	<td class='index_table'>{$biller.b_id}</td>
	<td class='index_table'>{$biller.b_name}</td>
	<!--
	<td class='index_table'>{$biller.b_phone}</td>
	<td class='index_table'>{$biller.b_mobile_phone}</td>
	-->
	<td class='index_table'>{$biller.b_email}</td>
	<td class='index_table'>{$biller.b_enabled}</td>
	</tr>
	
{/foreach}
</table>
{/if}