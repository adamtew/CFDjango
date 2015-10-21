<cfscript>
	head = "";
	title = "Timer";
</cfscript>

<cfsavecontent variable="content">
	<form method="post" action="active.cfm">
		<input type="text" name="userId" placeholder="Name or ID..." required/><br /><br />
		<input type="submit" value="submit">
	</form>
</cfsavecontent>


<cfinclude template="#TIMER_TEMPS#/base.cfm">