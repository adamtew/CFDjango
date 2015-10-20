/**
*
* @file  CFWorks.cfc
* @author  
* @description
*
*/

component output="true" displayname=""  {
	// writeDump(CGI);
	// location(url="http://localhost:8500/pages/CFWorks/app/index.cfm", statuscode="301", addtoken="false");
	// location(url="/pages/CFWorks/app/index.cfm", statuscode="301", addtoken="false");
	// if(CGI.)
	
	router(CGI.SCRIPT_NAME);

	pageName = getFileFromPath(reReplace(CGI.CF_TEMPLATE_PATH, '\..*', ''));
	// this.bob = true;
	// Potentially cool stuff ahead at
	// http://www.stephenwithington.com/blog/index.cfm/2008/8/26/CGI-Variables-and-Their-Respective-ColdFusionJava-Servlet-Alternative-Methods
	req = getPageContext().getRequest();
	
	// path_info = getPageContext().getRequest().getPathInfo();
	// writeDump(path_info);
	
	// cookies = req.getCookies();
	// writeDump(cookies);

	// writeDump(req);
	// writeDump(pageName);
	// writeDump(GetHttpRequestData());
	// for(key in cgi){
	// 	writeOutput(key & cgi[key]& "<br />" );
	// 	// writeOutput();
	// }
	// public function init(){
	// 	return this;
	// }


	public any function router(request_name) {
		// get path from the app it belongs to and then the view it belongs to...
		// if(request_name)
		// writeDump(CGI);
		try{
			if(len(rematch('^/pages/CFWorks/time_clock/index.cfm$', request_name)[1])) {
				new CFWorks.time_clock.controllers.IndexController();
				include '/pages/CFWorks/time_clock/views/index.cfm';
				include '/pages/CFWorks/time_clock/views/templates/base.cfm';
				// include '/pages/CFWorks/index.cfm';
			} else if(len(rematch('^/pages/CFWorks/bob.cfm$', request_name)[1])) {
				new CFWorks.time_clock.controllers.IndexController();

				include '/pages/CFWorks/index.cfm';
			}
		}
		catch (any e){
			// cfheader(statuscode="301", statustext="Moved Permanently");
			cfheader(statuscode="404", statustext="Moved Permanently");
			cfheader(name="location", value="/pages/CFWorks/404.cfm");
			// location(url="/pages/CFWorks/404.cfm", statuscode="404", addtoken="false");
			abort;

			include '/pages/CFWorks/404.cfm';
		}

		return;
	}
	
	


}