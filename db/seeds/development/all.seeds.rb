FactoryGirl.create(:user, email: "user@example.com")

3.times do
  room = FactoryGirl.create(:room)

  rand(1..5).times do
    FactoryGirl.create(:message, room: room)
  end
end
