<cfscript>
	// addRoute('^#BASE#/index.cfm$', '#TIMER#/controllers.IndexController', '#BASE#/index');
	// These are the routes that will be checked
	routes = [
		[ '^#BASE#/index.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#BASE#/index.cfm' ],
		
		// Timer routes
		// TODO: Figure out how to move this into the timer apps folder
		// Route 			View 						Template
		[ '^#TIMER#/$', '#TIMER_VIEWS#/HomeView.cfm', '#TIMER_TEMPS#/base.cfm' ],
		[ '^#TIMER#/home.cfm$', '#TIMER_VIEWS#/HomeView.cfm', '#TIMER_TEMPS#/home.cfm' ],
		[ '^#TIMER#/general.cfm$', '#TIMER_VIEWS#/GeneralView.cfm', '#TIMER_TEMPS#/general.cfm' ],
		[ '^#TIMER#/project.cfm$', '#TIMER_VIEWS#/ProjectView.cfm', '#TIMER_TEMPS#/project.cfm' ],
		[ '^#TIMER#/active.cfm$', '#TIMER_VIEWS#/ActiveView.cfm', '#TIMER_TEMPS#/active.cfm' ],
		

		[ '^#BASE#/404.cfm$', '#TIMER_VIEWS#/GeneralView', '#TIMER_TEMPS#/home.cfm' ]
	];

// urlpatterns = patterns('',
//     url(r'^admin/', include(admin.site.urls)),
//     url(r'^', include('apps.reports.urls', namespace="reports")),
//     url(r'^', include('apps.accounts.urls', namespace="accounts")),
// )


</cfscript>