class Raffler.Models.Entry extends Backbone.Model
  paramRoot: 'entry'

  defaults:
    name: null
    winner: null

class Raffler.Collections.EntriesCollection extends Backbone.Collection
  model: Raffler.Models.Entry
  url: '/entries'
