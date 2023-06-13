# == Schema Information
#
# Table name: openai_chats
#
#  id                :integer          not null, primary key
#  openai_api_key_id :integer          not null
#  name              :string
#  prompt            :text
#  model             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

module Openai
  class ChatTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
