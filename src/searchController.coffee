searchController = ($scope)->
  $scope.search = ()->
    console.log 'Searching...'
    jQuery.ajax
      type: "GET"
      dataType: "json"
      url: '/search.json'
      success: (data)->
        console.log 'Searching done...'
        console.log data
