require 'test_helper'

class OptativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @optative = optatives(:one)
  end

  test "should get index" do
    get optatives_url
    assert_response :success
  end

  test "should get new" do
    get new_optative_url
    assert_response :success
  end

  test "should create optative" do
    assert_difference('Optative.count') do
      post optatives_url, params: { optative: { description: @optative.description, duration: @optative.duration, enrollment: @optative.enrollment, professor: @optative.professor, program: @optative.program, schedule: @optative.schedule, title: @optative.title, year: @optative.year } }
    end

    assert_redirected_to optative_url(Optative.last)
  end

  test "should show optative" do
    get optative_url(@optative)
    assert_response :success
  end

  test "should get edit" do
    get edit_optative_url(@optative)
    assert_response :success
  end

  test "should update optative" do
    patch optative_url(@optative), params: { optative: { description: @optative.description, duration: @optative.duration, enrollment: @optative.enrollment, professor: @optative.professor, program: @optative.program, schedule: @optative.schedule, title: @optative.title, year: @optative.year } }
    assert_redirected_to optative_url(@optative)
  end

  test "should destroy optative" do
    assert_difference('Optative.count', -1) do
      delete optative_url(@optative)
    end

    assert_redirected_to optatives_url
  end
end
