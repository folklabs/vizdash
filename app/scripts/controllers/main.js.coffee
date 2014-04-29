
WIDGET_SIZE = 246
WIDGET_MARGIN = 10

jsonSettings = [
    {
        "name": "default",
        "url": "/data1.csv",
        "contentType": "text/csv",
        "fields": [
            {
                "vizField": "xAxis",
                "dataField": "Country"
            },
            {
                "vizField": "yAxis",
                "dataField": "Number"
            }
        ]
    }
]


TEST_GRID_CONFIG = [
  {
    content: {
      "name": "default",
      "url": "/sites/default/files/data1.csv",
      "contentType": "text/csv",
      "fields": [
        {
          "vizField": "xAxis",
          "dataField": "Country"
        },
        {
          "vizField": "yAxis",
          "dataField": "Number"
        }
      ]
    }
    position: { sizeX: 2, sizeY: 1, row: 0, col: 0 }
  }
]


app = angular.module("yeomanAngularHamlApp")


app.controller "MainCtrl", ($scope) ->
  $scope.awesomeThings = ["HTML5 Boilerplate", "Bootstrap", "AngularJS", "HAML", "CoffeeScript", "Karma"]
  $scope.standardItems = [
    { sizeX: 2, sizeY: 1, row: 0, col: 0 },
    { sizeX: 2, sizeY: 2, row: 0, col: 2 }
    # { sizeX: 1, sizeY: 1, row: 0, col: 4 },
    # { sizeX: 1, sizeY: 1, row: 0, col: 5 },
    # { sizeX: 2, sizeY: 1, row: 1, col: 0 },
    # { sizeX: 1, sizeY: 1, row: 1, col: 4 },
    # { sizeX: 1, sizeY: 2, row: 1, col: 5 },
    # { sizeX: 1, sizeY: 1, row: 2, col: 0 },
    # { sizeX: 2, sizeY: 1, row: 2, col: 1 },
    # { sizeX: 1, sizeY: 1, row: 2, col: 3 },
    # { sizeX: 1, sizeY: 1, row: 2, col: 4 }
  ]

  $scope.gridsterOpts = {
    minRows: 2
    maxRows: 100
    columns: 4
    colWidth: 'auto'
    rowHeight: 'match'
    margins: [10, 10]
    defaultSizeX: 2
    defaultSizeY: 1
    mobileBreakPoint: 600
    resizable: {
       enabled: true
       start: (event, uiWidget, $element) -> {}
       resize: (event, uiWidget, $element) -> {}
       stop: (event, uiWidget, $element) -> {}
    },
    # draggable: {
    #    enabled: true
    #    handle: '.panel'
    #    start: (event, uiWidget, $element) -> {}
    #    drag: (event, uiWidget, $element) -> {}
    #    stop: (event, uiWidget, $element) -> {}
    # }
  }

  # $scope.$watch('items', (items) ->
  #  # // one of the items changed
  #   return
  # , true)
  # jQuery ->
  #   console.log 'doc ready'

  #   $(".gridster > ul").gridster({
  #     widget_margins: [WIDGET_MARGIN, WIDGET_MARGIN],
  #     widget_base_dimensions: [WIDGET_SIZE, WIDGET_SIZE],
  #     resize: {
  #         enabled: true
  #       }
  #     })

app.directive 'vizdashItem', ->
  restrict: 'AE'
  # scope: {}
  # template: '<b>wubble</b>'
  link: (scope, element, attrs) ->
    renderOpt =
      rendererName: "vizshare.barchart"
      # selector: "#vizshare"
      data: jsonSettings
      vizOptions: {}
    # $(element).toolbar(scope.$eval(attrs.toolbarTip))
    # $('#vizshare').vizshare(renderOpt)
    element.vizshare(renderOpt)


# $('#output').vizshare({
#                     rendererName: "vizshare.barchart",
#                     data: jsonSettings,
#                     vizOptions: {}
#                 });

# var vizshareObj = $('#vizshare');
# jsonSettings = eval('(' + vizshareObj.text() + ')');
# vizshareObj.empty();
# console.log(jsonSettings);
# var renderOpt = {
#   rendererName: "vizshare.barchart",
#   selector: "#vizshare",
#   data: jsonSettings,
#   vizOptions: {}
# };
# vizshare.render(renderOpt);


