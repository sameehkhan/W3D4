# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer
#  author_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  
belongs_to :respondent,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :User

belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :AnswerChoice
  
# has_one :question
#   through: :
#   source: :Question 
  
  
  
end
