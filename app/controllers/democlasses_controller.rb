class DemoclassesController < ApplicationController
  before_action :set_democlass, only: [:show, :edit, :update, :destroy]

  # GET /democlasses
  def index
    @democlasses = Democlass.all
  end

  # GET /democlasses/1
  def show
  end

  # GET /democlasses/new
  def new
    @democlass = Democlass.new
  end

  # GET /democlasses/1/edit
  def edit
  end

  # POST /democlasses
  def create
    @democlass = Democlass.new(democlass_params)

    if @democlass.save
      redirect_to @democlass, notice: 'Democlass was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /democlasses/1
  def update
    if @democlass.update(democlass_params)
      redirect_to @democlass, notice: 'Democlass was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /democlasses/1
  def destroy
    @democlass.destroy
    redirect_to democlasses_url, notice: 'Democlass was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_democlass
      @democlass = Democlass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def democlass_params
      params.require(:democlass).permit(:name, :email)
    end
end
