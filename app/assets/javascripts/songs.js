function createSong(title, artist, description, year) {

  var newSong = { title: title, artist: artist, description: description, year: year};

  $.ajax({
    type: "POST",
    url: "/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json",

    fail: (function(error) {
    	console.log(error);
		})

	});
}

function deleteSong(songId) {
	$.ajax({
    type: "DELETE",
    url: "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json",
  	success: (function(result) {
    	window.location.reload();
  	})
	})
}

function submitSong(event) {
  event.preventDefault();
  createSong($("#song_title").val(), $("#song_artist").val(), $("#song_description").val(), $("#song_year").val());
}

function triggerDeleteSong(event) {	
	event.preventDefault();

  var song = $(this).parent().children()[0];
  var songId = song.id;
  deleteSong(songId);
}

function deleteAllSongs(event) {	
	event.preventDefault();

  var songs = $('.song');

  for (var song of songs) {
	  var songId = song.id;
	  deleteSong(songId)
	}
}

$(document).ready(function() {
  $("#form_submit").bind('click', submitSong);
  $(".delete_song").bind('click', triggerDeleteSong);
  $(".delete_all_songs").bind('click', deleteAllSongs);
});


