module Openai
  class Chat < ApplicationRecord
    belongs_to :api_key
  end
end
