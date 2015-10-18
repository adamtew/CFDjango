/**
*
* @file  Application.cfc
* @author  
* @description
*
*/

component extends="CFWorks.magic"
	output="false" 
	displayname=""  {



    function onApplicationStart() { }

    function onRequestStart( targetPath ) { 
    	if(this.bob)writeOutput("string");
    	include targetPath;
    }

    function onRequest( targetPath ) { }

    function onRequestEnd() { }

    function onError( exception, event ) { }

    function onSessionStart() { }
}