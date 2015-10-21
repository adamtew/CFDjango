<cfscript>
	TARGET_NAME = CGI.SCRIPT_NAME;
	
	PAGE_NAME = getFileFromPath(reReplace(TARGET_NAME, '\..*', ''));

	BASE = '/pages/CFDjango';
	ROOT = reReplace(getDirectoryFromPath(getCurrentTemplatePath()), '\/CFDjango\/$', '');
	// WEB_ROOT = 'http://' & CGI.SERVER_NAME & '/pages/CFDjango';
	WEB_ROOT = 'http://' & CGI.SERVER_NAME & ':' & CGI.SERVER_PORT & '/pages/CFDjango';
	STATIC_CONTENT = 'http://' & CGI.SERVER_NAME & ':' & CGI.SERVER_PORT & '/pages/CFDjango';

	INSTALLED_APPS = [
		'apps.timer'
	];

</cfscript>
