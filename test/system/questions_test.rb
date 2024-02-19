require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "div", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  # test "visiting answer, click on ask coach and redirect to new ask form" do
  #   visit answer_url
  #   take_screenshot
  #   click_on "ask a new question"
  #   fill_in "question", with: 'dazda?'
  #   click_on "Ask"

  #   assert_text "Silly question, get dressed and go to work!"
  # end

  # test "visiting answer, click on ask coach and redirect to new ask form" do
  #     visit answer_url
  #   #   take_screenshot
  #     click_on "ask a new question"
  #   #   fill_in "question", with: 'dazda?'
  #   #   click_on "Ask"

  #     assert_text "Ask"
  #   end

  test "simple" do
    visit ask_url
    fill_in "question", with: 'I am going to work'
    click_on "Ask"

    assert_text "Great!"
  end
end
