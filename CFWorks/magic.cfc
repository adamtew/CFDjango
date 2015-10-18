/**
*
* @file  CFWorks.cfc
* @author  
* @description
*
*/

component output="true" displayname=""  {
	
	pageName = getFileFromPath(reReplace(CGI.CF_TEMPLATE_PATH, '\..*', ''));
	this.bob = true;
	// Potentially cool stuff ahead at
	// http://www.stephenwithington.com/blog/index.cfm/2008/8/26/CGI-Variables-and-Their-Respective-ColdFusionJava-Servlet-Alternative-Methods
	req = getPageContext().getRequest();
	writeDump(req);
	writeDump(pageName);
	writeDump(GetHttpRequestData());
	writeDump(CGI);
	// for(key in cgi){
	// 	writeOutput(key & cgi[key]& "<br />" );
	// 	// writeOutput();
	// }
	// public function init(){
	// 	return this;
	// }


}