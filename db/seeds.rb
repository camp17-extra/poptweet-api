def create_user(email:, password:)
  User.create(email: email, password: password)
end

def create_tweet(name:, text:, image:, user:)
  Tweet.create(name: name, text: text, image: image, user: user)
end

user = create_user(email: 'user1@example.com', password: 'mypass')

create_tweet(name: 'タイトル', text: 'テキスト', image: '画像のURL', user: user)
