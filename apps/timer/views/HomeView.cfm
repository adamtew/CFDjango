<cfscript>
	head = "";
	title = "";
	savecontent variable="content" {
		writeOutput('
			<a href="general.cfm">General</a><br />
			<a href="project.cfm">Project</a>
		');
	}
</cfscript>