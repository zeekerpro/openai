module Openai
  class ApiKey < ApplicationRecord
    belongs_to :account
  end
end
