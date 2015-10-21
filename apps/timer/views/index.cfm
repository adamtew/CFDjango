<!--- <cfset title = "Index page">
<cfsavecontent variable="content">
	<h1>Index.cfm</h1>
</cfsavecontent>
This is the real index page --->
<!--- <cfinclude template="/pages/CFWorks/time_clock/views/templates/base.cfm"> --->
<!--- <cfinclude template="/templates/base.cfm"> --->
<cfset head = "">
<cfset title = "Timer">
<cfsavecontent variable="content">
	<a href="general.cfm">General</a><br />
	<a href="project.cfm">Project</a>
</cfsavecontent>
<!--- <cfdump var="#expandpath()#"> --->
<cfinclude template="#TIMER_VIEWS#/templates/base.cfm">