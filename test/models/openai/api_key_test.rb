# == Schema Information
#
# Table name: openai_api_keys
#
#  id                :integer          not null, primary key
#  openai_account_id :integer          not null
#  constent          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

module Openai
  class ApiKeyTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
