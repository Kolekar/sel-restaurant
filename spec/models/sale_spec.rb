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

require 'rails_helper'

RSpec.describe Sale, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
