class Like < ApplicationRecord
  belongs_to :user
  belongs_to :training_log
end
