<cfscript>
	time_clock = '/pages/CFWorks/apps/time_clock';
	// addRoute('^#base#/index.cfm$', '#time_clock#/controllers.IndexController', '#base#/index');

	routes = [
		[ '^#base#/index.cfm$', '#time_clock#/controllers.IndexController', '#base#/index.cfm' ],
		[ '^#base#/index.cf$', '#time_clock#/controllers.IndexController', '#base#/index.cfm' ],
		[ '^#base#/y.cfm$', '#time_clock#/controllers.IndexController', '#base#/index.cfm' ],
		[ '^#base#/y.cfm$', '#time_clock#/controllers.IndexController', '#base#/index.cfm' ],
		[ '^#base#/x.cfm$', '#time_clock#/controllers.IndexController', '#base#/index.cfm' ],
		[ '^#base#/404.cfm$', '#time_clock#/controllers.IndexController', '#base#/404.cfm' ]
	];

// urlpatterns = patterns('',
//     url(r'^admin/', include(admin.site.urls)),
//     url(r'^', include('apps.reports.urls', namespace="reports")),
//     url(r'^', include('apps.accounts.urls', namespace="accounts")),
// )


</cfscript>