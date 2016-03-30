class RegistrationsController < ApplicationController
  before_action :set_registration, only: [:show, :update, :destroy]

  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all

    render json: @registrations
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    render json: @registration
  end

  ##################################################################
  def stu1
    @student = Registration.where("student_id=1")
    render json: @student
  end
  def stu2
    @student = Registration.where("student_id=2")
    render json: @student
  end
  def stu3
    @student = Registration.where("student_id=3")
    render json: @student
  end
  def stu4
    @student = Registration.where("student_id=4")
    render json: @student
  end
  def stu5
    @student = Registration.where("student_id=5")
    render json: @student
  end
  def stu6
    @student = Registration.where("student_id=6")
    render json: @student
  end
  def stu7
    @student = Registration.where("student_id=7")
    render json: @student
  end
  def stu8
    @student = Registration.where("student_id=8")
    render json: @student
  end
  def stu9
    @student = Registration.where("student_id=9")
    render json: @student
  end
  ###################################################################

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      render json: @registration, status: :created, location: @registration
    else
      render json: @registration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registrations/1
  # PATCH/PUT /registrations/1.json
  def update
    @registration = Registration.find(params[:id])

    if @registration.update(registration_params)
      head :no_content
    else
      render json: @registration.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration.destroy

    head :no_content
  end

  private

    def set_registration
      @registration = Registration.find(params[:id])
    end

    def registration_params
      params.require(:registration).permit(:student_id, :course_id, :semester_id)
    end
end
