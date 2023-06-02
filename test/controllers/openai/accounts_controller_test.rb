require "test_helper"

module Openai
  class AccountsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @account = openai_accounts(:one)
    end

    test "should get index" do
      get accounts_url, as: :json
      assert_response :success
    end

    test "should create account" do
      assert_difference("Account.count") do
        post accounts_url, params: { account: { email: @account.email } }, as: :json
      end

      assert_response :created
    end

    test "should show account" do
      get account_url(@account), as: :json
      assert_response :success
    end

    test "should update account" do
      patch account_url(@account), params: { account: { email: @account.email } }, as: :json
      assert_response :success
    end

    test "should destroy account" do
      assert_difference("Account.count", -1) do
        delete account_url(@account), as: :json
      end

      assert_response :no_content
    end
  end
end
