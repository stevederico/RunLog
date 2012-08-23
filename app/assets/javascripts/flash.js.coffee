$ ->
  $(".notice, .error, .alert").on("click", (event)->
    $(event.target).hide("slow")
  )