require "test_helper"

module Openai
  class ChatsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @chat = openai_chats(:one)
    end

    test "should get index" do
      get chats_url, as: :json
      assert_response :success
    end

    test "should create chat" do
      assert_difference("Chat.count") do
        post chats_url, params: { chat: { api_key_id: @chat.api_key_id, model: @chat.model, name: @chat.name, prompt: @chat.prompt } }, as: :json
      end

      assert_response :created
    end

    test "should show chat" do
      get chat_url(@chat), as: :json
      assert_response :success
    end

    test "should update chat" do
      patch chat_url(@chat), params: { chat: { api_key_id: @chat.api_key_id, model: @chat.model, name: @chat.name, prompt: @chat.prompt } }, as: :json
      assert_response :success
    end

    test "should destroy chat" do
      assert_difference("Chat.count", -1) do
        delete chat_url(@chat), as: :json
      end

      assert_response :no_content
    end
  end
end
