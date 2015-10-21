/**
*
* @file  CFWorks.cfc
* @author  
* @description
*
*/

component output="true" displayname=""  {
	include 'settings.cfm';
	include 'routes.cfm';
	checkRoutes();

	/* ****************
		routing
	**************** */

	public any function checkRoutes() {
		for(key in routes){
			if(!arrayIsEmpty(rematch(key[1], TARGET_NAME))) {
			// checkRoute(key[1], key[2], key[3]);
			new '#key[2]#'();
			include key[3];
			return;
			}
		}

		cfheader(statuscode="404", statustext="File Doesn't Exist");
		cfheader(name='location', value='/pages/CFWorks/404.cfm');
		abort;
		return;
	}

	// public any function router(request_name) {
	// 	// get path from the app it belongs to and then the view it belongs to...
	// 	// if(request_name)
	// 	// writeDump(CGI);
	// 	// {
	// 		// addRoute('^path/?$');
	// 	// }
	// 	base = '/pages/CFWorks';
	// 	apps = base & '/apps';
	// 	time_clock_path = apps & '/time_clock';
	// 	controller_path = 'CFWorks/apps';
	// 	time_clock_controllers = controller_path & '/time_clock/controllers';
	// 	time_clock_views = time_clock_path & '/views';
	// 	// writeOutput(time_clock);
	// 	try{
	// 		// TODO: what if there are no matches?
	// 		// if(len(rematch('^' & time_clock_path & '/index.cfm$', request_name)[1])) {
	// 		if(len(rematch('^/pages/CFWorks/index.cfm$', request_name)[1])) {
	// 			// new CFWorks.apps.time_clock.controllers.IndexController();
	// 			new '#time_clock_controllers#.IndexController'();
	// 			include time_clock_views & '/index.cfm';
	// 			// include '/pages/CFWorks/apps/time_clock/views/templates/base.cfm';
	// 			include time_clock_views & '/templates/base.cfm';
	// 			// include '/pages/CFWorks/index.cfm';
	// 		} else if(len(rematch('^' & base & '/bob.cfm$', request_name)[1])) {
	// 			new '#time_clock_controllers#.IndexController'();

	// 			include base & 'index.cfm';
	// 		}
	// 	}
	// 	catch (any e){
	// 		// cfheader(statuscode="301", statustext="Moved Permanently");
	// 		cfheader(statuscode="404", statustext="Moved Permanently");
	// 		cfheader(name="location", value="/pages/CFWorks/404.cfm");
	// 		// location(url="/pages/CFWorks/404.cfm", statuscode="404", addtoken="false");
	// 		abort;

	// 		include '/pages/CFWorks/404.cfm';
	// 	}

	// 	return;
	// }
	
	


}