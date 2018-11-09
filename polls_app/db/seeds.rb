# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Poll.destroy_all
  Question.destroy_all
  AnswerChoice.destroy_all
  Response.destroy_all

  u1 = User.create!(username: 'Kanye')
  u2 = User.create!(username: 'HollisterSucks')
  u3 = User.create!(username: 'Savio')
  u4 = User.create!(username: 'Safuh')
  u5 = User.create!(username: 'TedTalks')
  u6 = User.create!(username: 'PollMaker')
  

  p1 = Poll.create!(title: 'App Academy', author: u3.id)

  q1 = Question.create!(text: 'What Cat Is Cutest?', poll: p1.id)
  
  
  ac1 = AnswerChoice.create!(text: 'Markov', question: q1.id)
  ac2 = AnswerChoice.create!(text: 'Curie', question: q1.id)
  ac3 = AnswerChoice.create!(text: 'Sally', question: q1.id)

  q2 = Question.create!(text: 'Which Toy Is Most Fun?', poll: p1.id)
  ac4 = AnswerChoice.create!(text: 'String', question: q2.id)
  ac5 = AnswerChoice.create!(text: 'Ball', question: q2.id)
  ac6 = AnswerChoice.create!(text: 'Bird', question: q2.id)

  r1 = Response.create!(
    respondent: u2.id,
    answer_choice: ac3.id 
  )
  r2 = Response.create!(
    respondent: u2.id,
    answer_choice: ac4.id
  )
  end