
# User data
u = User.create([
	{ user_name: 'test', password_digest: 'password'},
	{ user_name: 'test2', password_digest: 'password2'}
	])

# Mood data
m = Mood.create([
	{ name: 'Happy', link: '/moods/happy'},
	{ name: 'Sad', link: 'moods/sad'},
	{ name: 'Calm', link: 'moods/calm'},
	{ name: 'Angry', link: 'moods/angry'},
	{ name: 'Chill', link: 'moods/chill'},
	{ name: 'Energetic', link: 'moods/energetic'},
	{ name: 'Excited', link: 'moods/excited'},
	{ name: 'Lonely', link: 'moods/lonely'},
	{ name: 'Lazy', link: 'moods/lazy'},
	])