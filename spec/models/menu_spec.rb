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

require 'rails_helper'

RSpec.describe Menu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
