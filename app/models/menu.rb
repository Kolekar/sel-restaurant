# == Schema Information
#
# Table name: menus
#
#  id          :integer          not null, primary key
#  item_name   :string
#  rate        :float
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Menu < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_many :sale_items
	rails_admin do
	 list do
	   field :id
	   field :item_name
	   field :rate
	   field :category
	 end
	 edit do
	   field :item_name
	   field :rate
	   field :category
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
