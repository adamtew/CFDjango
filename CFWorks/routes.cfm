<cfscript>
	// addRoute('^#BASE#/index.cfm$', '#TIMER#/controllers.IndexController', '#BASE#/index');

	routes = [
		[ '^#BASE#/index.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#BASE#/index.cfm' ],
		
		// Timer routes
		// TODO: Figure out how to move this into the timer apps folder
		[ '^#TIMER#/$', '#TIMER_VIEWS#/HomeView.cfm', '#TIMER_TEMPS#/base.cfm' ],
		[ '^#TIMER#/home.cfm$', '#TIMER_VIEWS#/HomeView.cfm', '#TIMER_TEMPS#/home.cfm' ],
		[ '^#TIMER#/general.cfm$', '#TIMER_VIEWS#/GeneralView.cfm', '#TIMER_TEMPS#/general.cfm' ],
		[ '^#TIMER#/project.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#TIMER_VIEWS#/project.cfm' ],
		[ '^#TIMER#/active.cfm$', '#TIMER_VIEWS#/ActiveView.cfm', '#TIMER_TEMPS#/active.cfm' ],
		

		[ '^#BASE#/y.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#BASE#/index.cfm' ],
		[ '^#BASE#/x.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#BASE#/index.cfm' ],
		[ '^#BASE#/404.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#BASE#/404.cfm' ],
		[ '^#BASE#/404.cfm$', '#TIMER_ROUTE#/controllers.IndexController', '#BASE#/404.cfm' ]
	];

// urlpatterns = patterns('',
//     url(r'^admin/', include(admin.site.urls)),
//     url(r'^', include('apps.reports.urls', namespace="reports")),
//     url(r'^', include('apps.accounts.urls', namespace="accounts")),
// )


</cfscript>