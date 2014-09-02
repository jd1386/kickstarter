require 'test_helper'

class Help::FaqsControllerTest < ActionController::TestCase
  setup do
    @help_faq = help_faqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:help_faqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help_faq" do
    assert_difference('Help::Faq.count') do
      post :create, help_faq: { index: @help_faq.index }
    end

    assert_redirected_to help_faq_path(assigns(:help_faq))
  end

  test "should show help_faq" do
    get :show, id: @help_faq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help_faq
    assert_response :success
  end

  test "should update help_faq" do
    patch :update, id: @help_faq, help_faq: { index: @help_faq.index }
    assert_redirected_to help_faq_path(assigns(:help_faq))
  end

  test "should destroy help_faq" do
    assert_difference('Help::Faq.count', -1) do
      delete :destroy, id: @help_faq
    end

    assert_redirected_to help_faqs_path
  end
end
