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

require 'rails_helper'

RSpec.describe Waiter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
