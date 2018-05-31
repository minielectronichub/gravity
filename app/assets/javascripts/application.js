// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require_self





$(document).ready(function() {

  $("form.flex-form").on("submit", function(e) {
    e.preventDefault();
  });


	$("input#title").on('keyup', function() {

    $("#results").html("");
    var experiment_url, experiment_title;
    $.ajax({
      type: "GET",
      dataType: "json",
      url: "/search",
      data: "query=" + $('input#title').val(),
      success: function(response) {
        console.log(response)
        // console.log(response.experiments[0])
        // console.log(response.experiments[1])
        // console.log(response.experiments[1]["title"])
        var experiments = response.experiments;
        for(var i = 0; i < experiments.length; i++) {
          experiment_title = experiments[i]["title"];
          experiment_url =  experiments[i]["url"];
          $("#results").append(
            '<p> <a href="' + experiment_url + '">' + experiment_title + '</a></p>'
         );
        }
      } 
    });

  });
});

