OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:steam] = OmniAuth::AuthHash.new(
      provider: 'steam',
      uid: '76561198028177455',
      info: {
        name: 'Тест Тестерович',
        nickname: 'TheTestingGuy',
        image: 'http://png-1.findicons.com/files/icons/1072/face_avatars/300/i04.png'
      }
  )
