insertImage = (data) ->
  $('#image-list').append("<div class=\"panel panel-default\">").append("<div class=\"panel-heading\"><img src=\""+data.url+"\" width=\"250\"></div><div class\"panel-body\">"+data.notes+"</div>")

$(document).ready ->
  $("#new_pin").on "ajax:success", (e, data, status, xhr) ->
    console.log("new pin success")
    insertImage(data)
    $("#new-pin-modal").modal("hide")
