FactoryGirl.define do
  factory :user do
    id 1
    provider 'steam'
    uid '76561198028177455'
    name 'Тест Тестерович'
    nickname 'TheTestingGuy'
    avatar 'http://png-1.findicons.com/files/icons/1072/face_avatars/300/i04.png'
  end
end
