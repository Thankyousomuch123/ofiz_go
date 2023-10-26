json.extract! leave_request, :id, :employee_id, :leave_id, :start_date, :end_date, :created_at, :updated_at
json.url leave_request_url(leave_request, format: :json)
