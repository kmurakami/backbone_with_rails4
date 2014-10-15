class Raffler.Routers.EntriesRouter extends Backbone.Router
  initialize: (options) ->
    @entries = new Raffler.Collections.EntriesCollection()
    @entries.fetch()

  routes:
    "entries/new"      : "newEntry"
    "entries/index"    : "index"
    "entries/:id/edit" : "edit"
    "entries/:id"      : "show"
    "entries/.*"       : "index"
    "entries/"         : "index"

  newEntry: ->
    @view = new Raffler.Views.Entries.NewView(collection: @entries)
    $("#entries").html(@view.render().el)

  index: ->
    @view = new Raffler.Views.Entries.IndexView(entries: @entries)
    $("#entries").html(@view.render().el)

  show: (id) ->
    entry = @entries.get(id)

    @view = new Raffler.Views.Entries.ShowView(model: entry)
    $("#entries").html(@view.render().el)

  edit: (id) ->
    entry = @entries.get(id)

    @view = new Raffler.Views.Entries.EditView(model: entry)
    $("#entries").html(@view.render().el)
