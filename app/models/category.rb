# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
	has_many :menus
	belongs_to :user
	rails_admin do
	 list do
	   field :id
	   field :name
	 end
	 edit do
	 	field :name
	     field :user_id, :hidden do
		     visible true
		     def value
		       bindings[:view]._current_user.id
		     end
		  end

	   end


	   exclude_fields :created_at, :updated_at
	end
end
