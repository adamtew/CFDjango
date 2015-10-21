<cfscript>
	TARGET_NAME = CGI.SCRIPT_NAME;
	
	PAGE_NAME = getFileFromPath(reReplace(TARGET_NAME, '\..*', ''));

	BASE = '/pages/CFWorks';
	ROOT = reReplace(getDirectoryFromPath(getCurrentTemplatePath()), '\/CFWorks\/$', '');
	// WEB_ROOT = 'http://' & CGI.SERVER_NAME & '/pages/CFWorks';
	WEB_ROOT = 'http://' & CGI.SERVER_NAME & ':' & CGI.SERVER_PORT & '/pages/CFWorks';
	STATIC_CONTENT = 'http://' & CGI.SERVER_NAME & ':' & CGI.SERVER_PORT & '/pages/CFWorks';

	INSTALLED_APPS = [
		'apps.timer'
	];

</cfscript>
