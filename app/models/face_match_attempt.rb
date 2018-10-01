class FaceMatchAttempt < ApplicationRecord
  belongs_to :user
  belongs_to :photo
  belongs_to :quiz
end
