require "application_system_test_case"

class LeaveRequestsTest < ApplicationSystemTestCase
  setup do
    @leave_request = leave_requests(:one)
  end

  test "visiting the index" do
    visit leave_requests_url
    assert_selector "h1", text: "Leave requests"
  end

  test "should create leave request" do
    visit leave_requests_url
    click_on "New leave request"

    fill_in "Employee", with: @leave_request.employee_id
    fill_in "End date", with: @leave_request.end_date
    fill_in "Leave", with: @leave_request.leave_id
    fill_in "Start date", with: @leave_request.start_date
    click_on "Create Leave request"

    assert_text "Leave request was successfully created"
    click_on "Back"
  end

  test "should update Leave request" do
    visit leave_request_url(@leave_request)
    click_on "Edit this leave request", match: :first

    fill_in "Employee", with: @leave_request.employee_id
    fill_in "End date", with: @leave_request.end_date
    fill_in "Leave", with: @leave_request.leave_id
    fill_in "Start date", with: @leave_request.start_date
    click_on "Update Leave request"

    assert_text "Leave request was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave request" do
    visit leave_request_url(@leave_request)
    click_on "Destroy this leave request", match: :first

    assert_text "Leave request was successfully destroyed"
  end
end
