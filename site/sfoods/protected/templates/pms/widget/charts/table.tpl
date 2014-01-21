<script id="table-tmpl" type="type/x-jquery-tmpl">
	<div class="table-data-wrap">
		<table class="stable" cellspacing="0">
			<thead>
				<tr>
					{{each col}}
					<th>${$value}</th>
					{{/each}}
				</tr>
			</thead>
			<tbody>
				{{each row}}
				<tr>
					{{each $value}}
					<td>${$value ? $value : '--'}</td>
					{{/each}}
				</tr>
				{{/each}}
			</tbody>
		</table>
		<div class="table-toggle">
			<span></span>
		</div>
	</div>
</script>