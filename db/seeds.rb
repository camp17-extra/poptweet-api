user = User.create(email: 'user1@example.com', password: 'mypass')

Tweet.create(name: 'タイトル', text: 'テキスト', image: '画像のURL', user: user)
