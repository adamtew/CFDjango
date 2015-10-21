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
    name="name" {
    // name="#hash( getCurrentTemplatePath())#" {



    function onApplicationStart() { }

    function onRequestStart( targetPath ) { }

    function onRequest( targetPath ) {/*fired first I think*/ }

    function onRequestEnd() { }

    function onError( exception, event ) { }

    function onSessionStart() { }
}