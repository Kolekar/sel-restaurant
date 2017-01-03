# == Schema Information
#
# Table name: sale_items
#
#  id         :integer          not null, primary key
#  sale_id    :integer
#  menu_id    :integer
#  rate       :float
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SaleItem < ActiveRecord::Base
	belongs_to :sale
	belongs_to :menu
end
