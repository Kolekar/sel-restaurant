# == Schema Information
#
# Table name: sales
#
#  id            :integer          not null, primary key
#  table_no      :string
#  waiter_id     :integer
#  user_id       :integer
#  payed_price   :float
#  in_date_time  :datetime
#  out_date_time :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Sale < ActiveRecord::Base
	belongs_to :waiter
	belongs_to :user
	has_many :sale_items

	rails_admin do
	 list do
	   field :id
	   field :table_no
	   field :user
	   field :sales
	   field :payed_price
	   field :in_date_time
	   field :out_date_time

	 end
	 edit do
	   field :table_no
	   field :payed_price
	   field :in_date_time
	   field :out_date_time
	     field :user_id, :hidden do
		     visible true
		     def value
		       bindings[:view]._current_user.id
		     end
		  end

	   end


	   exclude_fields :created_at, :updated_at
	end

	def sales
		 %{<a href="/admin/sale_item?model_name=sale_item&utf8=✓&f[sale][30075][o]=is&f[sale][30075][v]=#{self.id}&query=">Sales</a>}.html_safe
	end
end
