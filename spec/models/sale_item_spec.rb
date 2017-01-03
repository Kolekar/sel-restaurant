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

require 'rails_helper'

RSpec.describe SaleItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
