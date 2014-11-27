// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
function display_update(str)
{
	document.getElementById('index').style.display = "none";
	document.getElementById('honoraire').style.display = "none";
	document.getElementById('specialite').style.display = "none";
	document.getElementById('contact').style.display = "none";
	document.getElementById(str).style.display = "block";
}

function no_display_update_post(i)
{
    document.getElementById('update_post' + i).style.display = "none";
    document.getElementById('no_update_post' + i).onclick = function onclick(event) { display_update_post(i) };
}

function display_update_post(i)
{
    document.getElementById('update_post' + i).style.display = "block";
    document.getElementById('no_update_post' + i).onclick = function onclick(event) { no_display_update_post(i) };
}