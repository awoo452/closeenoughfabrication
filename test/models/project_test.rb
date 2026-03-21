require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "loads projects from json" do
    projects = Project.all

    assert projects.any?
    assert projects.first.id.present?
  end

  test "find returns a project" do
    project = Project.find(1)

    assert_equal "1", project.to_param
  end
end
