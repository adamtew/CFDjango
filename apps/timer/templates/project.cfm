<cfscript>
	head = "";
	title = "Timer";
</cfscript>
<cfoutput>	
<cfsavecontent variable="content">
		
	<!--- link to the new_project_and_type.cfm page --->
	<a href="new_project_and_type.cfm">New Project</a><br />

	<!--- form for that leads you to the creation of a new project with an existing type --->
	<form method="post" action="new_project.cfm">
		<select name="template_id_name">
			<!--- <cfloop query="#context.types#"> --->
				<!--- <option value="#context.types.time_template_id#,#context.types.template_name#">#context.types.template_name#</option> --->
			<!--- </cfloop> --->
		</select><br />
		<input type="submit">
	</form>

	<br /><br />
	Project Type<br />

	<!--- form that takes you to look at all the projects of a specific project type --->
	<form method="post" action="project_type.cfm">
		<select name="template_id">
			<!--- <cfloop query="#context.types#">
				<option value="#context.types.time_template_id#">#context.types.template_name#</option>
			</cfloop> --->
		</select><br />
		<input type="submit">
		<!--- <input type="hidden" name="template_name" value="#context.types.template_name#"> --->
	</form>

	<br /><br />

	<button onClick="location.href='advanced_search.cfm'">Advanced Search</button>
</cfsavecontent>
</cfoutput>

<cfinclude template="#TIMER_TEMPS#/base.cfm">
