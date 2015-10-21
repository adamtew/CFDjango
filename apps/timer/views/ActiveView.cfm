<cfscript>
	head = "";
	title = "Timer";
</cfscript>

<cfsavecontent variable="content">
<cfoutput>
	<b>Project Info</b> <br />
	Type: <!--- #context.templateName# ---><br />
	<!--- Station: #context.projectName#<br /><br /> --->
	Station: <!--- #context.projectName# ---><br />
	Notes: <!--- #context.notes# ---><br /><br />
	<form method="post" action="active_time_clock.cfm">
		<input type="text" placeholder="Name or ID..." /><br /><br />
		<input type="submit" value="submit">
		<!--- <input type="hidden" name="templateId" value="#context.templateId#">
		<input type="hidden" name="templateName" value="#context.templateName#">
		<input type="hidden" name="projectName" value="#context.projectName#">
		<input type="hidden" name="timeId" value="#context.timeId#"> --->
	</form>

	<form method="post" action="notes.cfm">
		<input type="submit" value="notes">
		<!--- <input type="hidden" name="templateName" value="#context.templateName#">
		<input type="hidden" name="templateId" value="#context.templateId#">
		<input type="hidden" name="projectName" value="#context.projectName#">
		<input type="hidden" name="timeId" value="#context.timeId#"> --->
	</form>
	<!--- <button onClick="location.href='notes.cfm'">Notes</button> --->
</cfoutput>
</cfsavecontent>



