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
    belongs_to :api_key, foreign_key: :openai_api_key_id

    # https://platform.openai.com/docs/models/overview
    enum model: {
      gpt_3_5_turbo: 'gpt-3.5-turbo',  # default
      gpt_3_5_turbo_16k: 'gpt-3.5-turbo-16k',
      gpt_4: 'gpt-4',
      gpt_4_32k: 'gpt-4-32k',
    }

    attribute :model, :string, default: 'gpt-3.5-turbo'

  end
end
