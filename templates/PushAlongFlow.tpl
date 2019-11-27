<div id="processflowpushalong" class="mermaid">
{$FLOWGRAPH}
</div>
<script>
window.processflowmoveto = function (tostate, forrecord, askifsure) {
	if (askifsure) {
		$ans = confirm(alert_arr.WANT_TO_CONTINUE);
	} else {
		$ans = true;
	}
	if ($ans) {
		var txtBox = 'txtbox_{$fieldName}';
		document.getElementById(txtBox).value = tostate;
		dtlViewAjaxSave('{$fieldName}', '{$module}', '{$uitype}', '', '{$fieldName}', forrecord);
	}
}
mermaid.initialize({
	securityLevel: 'loose'
});
mermaid.init();
</script>