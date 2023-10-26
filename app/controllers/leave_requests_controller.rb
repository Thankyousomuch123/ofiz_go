class LeaveRequestsController < ApplicationController
  before_action :set_leave_request, only: %i[ show edit update destroy ]

  # GET /leave_requests or /leave_requests.json
  def index
    @leave_requests = LeaveRequest.all
  end

  # GET /leave_requests/1 or /leave_requests/1.json
  def show
  end

  # GET /leave_requests/new
  def new
    @leave_request = LeaveRequest.new
  end

  # GET /leave_requests/1/edit
  def edit
  end

  # POST /leave_requests or /leave_requests.json
  def create
    @leave_request = LeaveRequest.new(leave_request_params)

    respond_to do |format|
      if @leave_request.save
        format.html { redirect_to leave_request_url(@leave_request), notice: "Leave request was successfully created." }
        format.json { render :show, status: :created, location: @leave_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_requests/1 or /leave_requests/1.json
  def update
    respond_to do |format|
      if @leave_request.update(leave_request_params)
        format.html { redirect_to leave_request_url(@leave_request), notice: "Leave request was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_requests/1 or /leave_requests/1.json
  def destroy
    @leave_request.destroy

    respond_to do |format|
      format.html { redirect_to leave_requests_url, notice: "Leave request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_request
      @leave_request = LeaveRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_request_params
      params.require(:leave_request).permit(:employee_id, :leave_id, :start_date, :end_date)
    end
end
