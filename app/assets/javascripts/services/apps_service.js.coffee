angular.module('apiDocsApp').factory('serviceLoadApps', ['$http', ($http) ->
    serviceLoadApps = 
        data:
            apps: [{id: 101, name: 'abc', desc: 'this is testing', language: 'en'},{id: 102, name: 'xyz', desc: 'this is simple', language: 'es'}]
        isLoaded: false

    serviceLoadApps.loadApps = ->
        $http.get('/api/apps.json').success( (data) ->
            serviceLoadApps.data.apps = data
            serviceLoadApps.isLoaded = true
            console.log('Successfully loaded...')
        ).error( ->
            console.error('Failed to load posts!')
        )

    return serviceLoadApps
])
