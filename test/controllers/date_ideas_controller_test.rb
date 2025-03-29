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

  test "show" do
    date_idea = DateIdea.first
    get "/date_ideas/#{date_idea.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    expected_keys = [ "id", "name", "image", "cost", "description", "created_at", "updated_at" ]
    # Using sort to account for order differences:
    assert_equal expected_keys.sort, data.keys.sort
  end

  test "update" do
    date_idea = DateIdea.first
    patch "/date_ideas/#{date_idea.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "DateIdea.count", -1 do
      delete "/date_ideas/#{DateIdea.first.id}.json"
      assert_response 200
    end
  end
end
