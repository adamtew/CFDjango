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
	// writeDump(CGI);
	checkRoutes();
	// abort;
	/* ****************
		routing
	**************** */

	public any function checkRoutes() {
		for(key in routes){
			writeDump(arrayIsDefined(rematch(key[1], TARGET_NAME), 1));
			// if(!arrayIsEmpty(rematch(key[1], TARGET_NAME)[1])) {
			if(arrayIsDefined(rematch(key[1], TARGET_NAME), 1)) {
			// checkRoute(key[1], key[2], key[3]);
			// new '#key[2]#'();
			include key[2];
			include key[3];
			return;
			}
		}

		// TODO: actually make it show the 404 page...
		cfheader(statuscode="404", statustext="File Doesn't Exist");
		cfheader(name='location', value='/pages/CFWorks/404.cfm');
		abort;
		return;
	}

}