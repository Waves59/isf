class IntuitorsController < ApplicationController
  before_action :set_intuitor, only: [:show, :edit, :update, :destroy]

  # GET /intuitors
  # GET /intuitors.json
  def index
    @intuitors = Intuitor.all
  end

  # GET /intuitors/1
  # GET /intuitors/1.json
  def show

  end

  # GET /intuitors/new
  def new
    @intuitor = Intuitor.new
  end

  # GET /intuitors/1/edit
  def edit
  end

  # POST /intuitors
  # POST /intuitors.json
  def create
    @intuitor = Intuitor.new(intuitor_params)

    respond_to do |format|
      if @intuitor.save
        format.html { redirect_to @intuitor, notice: 'Intuitor was successfully created.' }
        format.json { render :show, status: :created, location: @intuitor }
      else
        format.html { render :new }
        format.json { render json: @intuitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intuitors/1
  # PATCH/PUT /intuitors/1.json
  def update
    respond_to do |format|
      if @intuitor.update(intuitor_params)
        format.html { redirect_to @intuitor, notice: 'Intuitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @intuitor }
      else
        format.html { render :edit }
        format.json { render json: @intuitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intuitors/1
  # DELETE /intuitors/1.json
  def destroy
    @intuitor.destroy
    respond_to do |format|
      format.html { redirect_to intuitors_url, notice: 'Intuitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intuitor
      @intuitor = Intuitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intuitor_params
      params.require(:intuitor).permit(:category, :avatar, :mail, :first_name, :last_name, :diploma, :description, :website)
    end
end
