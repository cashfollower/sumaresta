jQuery(document).ready ->
  $("form#user_select_board").find("#board_id").change (evt) ->
    evt.preventDefault()
    if $(this).val()? and $(this).val() != ""
      window.location = "/boards/#{$(this).val()}"