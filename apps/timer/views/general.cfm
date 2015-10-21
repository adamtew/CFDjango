<cfset head = "">
<cfset title = "Timer">
<cfsavecontent variable="content">
<form method="post" action="active_time_clock.cfm">
	<input type="text" name="userId" placeholder="Name or ID..." required/><br /><br />
	<input type="submit" value="submit">
</form>
</cfsavecontent>
<!--- <cfdump var="#expandpath()#"> --->
<cfinclude template="#TIMER_VIEWS#/templates/base.cfm">