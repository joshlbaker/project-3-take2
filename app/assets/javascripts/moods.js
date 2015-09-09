$(function(){


	SC.initialize({
	  client_id: '6fc19c2fb18db1b92695ad63776e9764'
	});

	// permalink to a track
	var track_url = 'https://soundcloud.com/rebeccajc1711/sets/happy-playlist-1';
 
	SC.get('/resolve', { url: track_url }, function(track) {
		console.log(track.uri)
	});

});



