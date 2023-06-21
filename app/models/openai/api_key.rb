# == Schema Information
#
# Table name: openai_api_keys
#
#  id                :integer          not null, primary key
#  openai_account_id :integer          not null
#  content           :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
module Openai
  class ApiKey < ApplicationRecord
    belongs_to :account
  end
end
