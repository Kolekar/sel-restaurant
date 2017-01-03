# == Schema Information
#
# Table name: waiters
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  mobile     :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Waiter < ActiveRecord::Base
	has_many :sales
	belongs_to :user
end
