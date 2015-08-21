// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets


insertImage = (data) ->
  $('#image-list').append("<div class=\"panel panel-default\">").append("<div class=\"panel-heading\"><img src=\""+data.url+"\" width=\"250\"></div><div class\"panel-body\">"+data.notes+"</div>")

$(document).ready ->
  $("#new_pin").on "ajax:success", (e, data, status, xhr) ->
    console.log("new pin success")
    insertImage(data)
    $("#new-pin-modal").modal("hide")