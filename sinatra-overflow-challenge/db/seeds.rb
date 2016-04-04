10.times {User.create(user_name: Faker::Internet.user_name, email: Faker::Internet.email, password: 'test1234')}

20.times do
  Question.create({
    title: Faker::Hipster.sentence + "?",
    content: Faker::Hipster.sentence(3),
    user_id: rand(1..10)
  })


    5.times {
      number = 1
      Answer.create({
        user_id: rand(1..10),
        content: Faker::Name.title,
        question_id: number
      })
      number = number + 1
    }
end

10.times do
  types = ["question","answer"]
    Comment.create({
        commentable_type: types.sample,
        commentable_id: rand(1..20),
        comment: Faker::Hipster.sentence
    })
end


200.times do
  Vote.create({
    user_id: rand(1..10),
    votable_type: "question",
    votable_id: rand(1..20),
    vote: [-1,1].sample
    })
end

100.times do
  Vote.create({
    user_id: rand(1..10),
    votable_type: "answer",
    votable_id: rand(1..20),
    vote: [-1,1].sample
    })
end

#questions
# users = User.all
# questions = Question.all
# comments = comment.all

