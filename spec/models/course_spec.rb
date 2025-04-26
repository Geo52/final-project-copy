require 'rails_helper'

RSpec.describe Course, type: :model do
  before do
    @user = create(:user)
  end

  it "should accept a course with valid data" do
    course = Course.new(crn: "12345", name: "Course name", description: "Small description", capacity:20)
    expect(course).to be_valid
  end

  it "should accept a course with a valid capacity" do
    course = Course.new(crn: "12345", name: "Course name", description: "Small description", capacity:51)
    expect(course).not_to be_valid
  end
end
