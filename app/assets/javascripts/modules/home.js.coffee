@Home =
  init: ->
    @whenClickButton()
    @whenPressEnter()
    @filterByType()
    @directionBy()
    @sortBy()

  whenClickButton: ->
    $('#button_search').on 'click', (ev) ->
      Home.redirectToUserPage()

  whenPressEnter: ->
    $('#github_username').on 'keyup', (ev) ->
      code = ev.keyCode || ev.which
      Home.redirectToUserPage() if code == 13

  redirectToUserPage: ->
    username = $('#github_username').val()
    location.href = "/#{username}" if username

  filterByType: ->
    $('#github_type').on 'change', (ev) ->
      location.href = Home.parameters()

  sortBy: ->
    $('#github_sort').on 'change', (ev) ->
      location.href = Home.parameters()

  directionBy: ->
    $('#github_direction').on 'change', (ev) ->
      location.href = Home.parameters()

  parameters: ->
    "?type=#{$('#github_type').val()}&sort=#{$('#github_sort').val()}&direction=#{$('#github_direction').val()}"

