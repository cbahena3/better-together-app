require "test_helper"

class DateIdeasControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/date_ideas.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal DateIdea.count, data.length
  end
end
