require "test_helper"

class DocsControllerTest < ActionDispatch::IntegrationTest
  test "renders docs index" do
    get docs_url

    assert_response :success
    assert_match "Welcome and Basics", response.body
  end

  test "filters docs by query" do
    get docs_url, params: { q: "intro" }

    assert_response :success
    assert_match "result", response.body
  end

  test "renders doc show" do
    get doc_url("welcome-basics")

    assert_response :success
    assert_match "Welcome and Basics", response.body
  end

  test "raises for missing doc" do
    error_class = defined?(ActiveRecord::RecordNotFound) ? ActiveRecord::RecordNotFound : NameError

    assert_raises(error_class) do
      get doc_url("missing-doc")
    end
  end
end
