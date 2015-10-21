/**
*
* @file  CFWorks.cfc
* @author  
* @description
*
*/

component output="true" displayname=""  {

	setSettings();
	// writeDump(CGI);
	checkRoutes();

	/* ****************
		routing
	**************** */

	public any function checkRoutes() {
		// include the routes
		include 'routes.cfm';
	
		for(key in routes){
			// if the route is matched
			if(arrayIsDefined(rematch(key[1], TARGET_NAME), 1)) {
			arrayIsDefined(rematch(key[1], TARGET_NAME), 1);
			// include the View
			include key[2];
			// include the template
			include key[3];
			return;
			}
		}

		// TODO: actually make it show the 404 page...
		// if you can't match any of the paths throw a 404 error
		cfheader(statuscode="404", statustext="File Doesn't Exist");
		cfheader(name='location', value='/pages/CFDjango/404.cfm');
		abort;
	}

	/* ****************
		settings
	**************** */	

	// dynamically set settings variables
	public any function setSettings() {
		// include the global settings
		include 'settings.cfm';

		for(APP in INSTALLED_APPS){
			app_name 						= reReplace(APP, '^[a-z]*\.', '');
			VARIABLES["#app_name#"]	 		= '#BASE#/#app_name#';
			VARIABLES['#app_name#_ROUTE'] 	= '#BASE#/apps/#app_name#';
			VARIABLES['#app_name#_VIEWS'] 	= '#BASE#/apps/#app_name#/views';
			VARIABLES['#app_name#_TEMPS'] 	= '#BASE#/apps/#app_name#/templates';
			VARIABLES['#app_name#_STATIC']	= '#STATIC_CONTENT#/apps/#app_name#/static';
		}
		return;
	}

}