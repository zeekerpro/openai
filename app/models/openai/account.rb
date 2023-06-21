# == Schema Information
#
# Table name: openai_accounts
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Openai
  class Account < ApplicationRecord
    has_many :api_keys, dependent: :destroy, foreign_key: :openai_account_id
  end
end
