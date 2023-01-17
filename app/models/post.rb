class Post < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :desired_time

  validates :desired_time_id, numericality: { other_than: 1 , message: "can't be blank"}
end
