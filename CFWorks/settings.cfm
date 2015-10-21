<cfscript>
	TARGET_NAME = CGI.SCRIPT_NAME;
	
	PAGE_NAME = getFileFromPath(reReplace(TARGET_NAME, '\..*', ''));

	BASE = '/pages/CFWorks';
	
	TIMER = '#BASE#/timer';
	TIMER_ROUTE = '#BASE#/apps/timer';
	TIMER_VIEWS = '#BASE#/apps/timer/views';
	TIMER_TEMPS = '#BASE#/apps/timer/templates';

	INSTALLED_APPS = (
		'#BASE#/apps/timer'
	);






// writeDump(CGI);
	// location(url="http://localhost:8500/pages/CFWorks/app/index.cfm", statuscode="301", addtoken="false");
	// location(url="/pages/CFWorks/app/index.cfm", statuscode="301", addtoken="false");
	// if(CGI.)

	
	// router(targetName);

	// this.bob = true;
	// Potentially cool stuff ahead at
	// http://www.stephenwithington.com/blog/index.cfm/2008/8/26/CGI-Variables-and-Their-Respective-ColdFusionJava-Servlet-Alternative-Methods
	// req = getPageContext().getRequest();
	// writeDump(req);
	
	
	// path_info = getPageContext().getRequest().getPathInfo();
	// writeDump(path_info);
	
	// cookies = req.getCookies();
	// writeDump(cookies);

	// writeDump(pageName);
	// writeDump(GetHttpRequestData());
	// for(key in cgi){
	// 	writeOutput(key & cgi[key]& "<br />" );
	// 	// writeOutput();
	// }
	// public function init(){
	// 	return this;
	// }
</cfscript>
