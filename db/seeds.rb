
# User data
u = User.create([
	{ user_name: 'test', password_digest: 'password'},
	{ user_name: 'test2', password_digest: 'password2'}
	])

# Mood data
m = Mood.create([
	{ name: 'Happy'},
	{ name: 'Sad'},
	{ name: 'Calm'},
	{ name: 'Angry'},
	{ name: 'Chill'},
	{ name: 'Energetic'},
	{ name: 'Excited'},
	{ name: 'Lonely'},
	{ name: 'Lazy'},
	])