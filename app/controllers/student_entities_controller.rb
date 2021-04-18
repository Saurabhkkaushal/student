class StudentEntitiesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_student_entity, only: %i[edit update destroy ]

  # GET /student_entities or /student_entities.json
  def index
    @student_entities = StudentEntity.all
    render json: @student_entities, status: :ok
  end

  # GET /student_entities/1 or /student_entities/1.json
  def show
    student = StudentEntity.find_by(id: params[:id])
    if student.present?
      render json: student, staus: :ok
    else
      render json: {msg: "not found"}, staus: :not_found
    end
  end

  # GET /student_entities/new
  def new
    @student_entity = StudentEntity.new
  end

  # GET /student_entities/1/edit
  def edit
  end

  # POST /student_entities or /student_entities.json
  def create
    @student_entity = StudentEntity.new(student_entity_params)

    respond_to do |format|
      if @student_entity.save
        format.json { render :show, status: :created, location: @student_entity }
      else
        format.json { render json: @student_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_entities/1 or /student_entities/1.json
  def update
    respond_to do |format|
      if @student_entity.update(student_entity_params)
        format.json { render :show, status: :ok, location: @student_entity }
      else
        format.json { render json: @student_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_entities/1 or /student_entities/1.json
  def destroy
    @student_entity.destroy
    render json: {msg: 'deleted successfully'}, status: 200
  end

  # sorting array by created at
  def sort
    @student_entities = StudentEntity.all
    @student_entities = @student_entities.sort_by { |stu| stu.created_at }
    render json: @student_entities, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_entity
      @student_entity = StudentEntity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_entity_params
      params.require(:student_entity).permit(:name, :email, :address, :enroll_no, :course)
    end
end
