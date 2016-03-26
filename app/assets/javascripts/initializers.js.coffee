ready = ->
  # Vendors
  Bootstrap.init()

  # Modules
  # Home.init()

$(document).ready ready
$(document).on 'page:load', ready
