# == Schema Information
#
# Table name: ideaposts
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ideapost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :user_id, presence: true
end
