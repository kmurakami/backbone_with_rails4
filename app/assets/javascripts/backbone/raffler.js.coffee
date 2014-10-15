#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Raffler =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new Raffler.Routers.EntriesRouter()
    Backbone.history.start()

$(document).ready ->
  Raffler.init()
