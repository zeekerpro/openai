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
module Openai
  class Chat < ApplicationRecord
    belongs_to :api_key

    enum model: {
      gpt_3_5_turbo: 'gpt-3.5-turbo',
      gpt_3_5_turbo_0301: 'gpt-3.5-turbo-0301',
      gpt_4: 'gpt-4',
      gpt_4_0314: 'gpt-4-0314',
      gpt_4_32k: 'gpt-4-32k',
      gpt_4_32k_0314: 'gpt-4-32k-0314'
    }

    attribute :model, :string, default: 'gpt-3.5-turbo'

  end
end
