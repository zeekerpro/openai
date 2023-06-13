# == Schema Information
#
# Table name: openai_accounts
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

module Openai
  class AccountTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
