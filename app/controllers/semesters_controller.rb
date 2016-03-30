class SemestersController < ApplicationController
  before_action :set_semester, only: [:show, :update, :destroy]

  # GET /semesters
  # GET /semesters.json
  def index
    @semesters = Semester.all

    render json: @semesters
  end

  # GET /semesters/1
  # GET /semesters/1.json
  def show
    render json: @semester
  end
######################################################################
  def spring16
    #@semester = params() # Write queries here
    #render text: "I got #{@semester} and spring16"
    @registrations = Registration.where("semester_id='1'")
    render json: @registrations
  end
  def fall16
    #@semester = params()
    #render text: "I got #{@semester} and fall16"
    @registrations = Registration.where("semester_id='2'")
    render json: @registrations
  end
  def spring17
   # @semester = params()
    #render text: "I got #{@semester} and spring17"
    @registrations = Registration.where("semester_id='3'")
    render json: @registrations
  end
  def fall17
    #@semester = params()
    #render text: "I got #{@semester} and fall17"
    @registrations = Registration.where("semester_id='4'")
    render json: @registrations
  end
  ###################################################################
  # POST /semesters
  # POST /semesters.json
  def create
    @semester = Semester.new(semester_params)

    if @semester.save
      render json: @semester, status: :created, location: @semester
    else
      render json: @semester.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /semesters/1
  # PATCH/PUT /semesters/1.json
  def update
    @semester = Semester.find(params[:id])

    if @semester.update(semester_params)
      head :no_content
    else
      render json: @semester.errors, status: :unprocessable_entity
    end
  end

  # DELETE /semesters/1
  # DELETE /semesters/1.json
  def destroy
    @semester.destroy

    head :no_content
  end

  private

    def set_semester
      @semester = Semester.find(params[:id])
    end

    def semester_params
      params.require(:semester).permit(:student_id, :sem)
    end
end
