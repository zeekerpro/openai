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
  end
end
