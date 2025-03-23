require "test_helper"

class DateIdeasControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/date_ideas.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal DateIdea.count, data.length
  end

  test "create" do
    assert_difference "DateIdea.count", 1 do
      post "/date_ideas.json", params: { name: "lake", cost: "$$$", image: "address.org", description: "a beautiful lake" }
      assert_response :created  # or assert_response 201
    end
  end
end
