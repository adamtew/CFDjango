/**
*
* @file  Application.cfc
* @author  
* @description
*
*/

component extends="CFWorks.magic"
	output="false" 
	displayname=""  
    name="app" {



    function onApplicationStart() { 
    }

    function onRequestStart( targetPath ) { 
        // abort;
        // writeOutput(targetPath);
    	// if(this.bob)writeOutput("string");
        // writeDump(targetPath);
        // location(url="#targetPath#", statuscode="404", addtoken="false");
        // abort;
    	// include targetPath;
    }

    // function onRequest( targetPath ) { 
    //     abort;
    // }

    // function onRequestEnd() { 
    //     // abort;
    // }

    function onError( exception, event ) { }

    function onSessionStart() { }
}