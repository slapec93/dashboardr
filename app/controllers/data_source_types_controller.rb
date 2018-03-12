class DataSourceTypesController < ApplicationController
  before_action :set_data_source_type, only: [:show, :edit, :update, :destroy]

  # GET /data_source_types
  # GET /data_source_types.json
  def index
    @data_source_types = DataSourceType.all
  end

  # GET /data_source_types/1
  # GET /data_source_types/1.json
  def show
  end

  # GET /data_source_types/new
  def new
    @data_source_type = DataSourceType.new
  end

  # GET /data_source_types/1/edit
  def edit
  end

  # POST /data_source_types
  # POST /data_source_types.json
  def create
    @data_source_type = DataSourceType.new(data_source_type_params)

    respond_to do |format|
      if @data_source_type.save
        format.html { redirect_to @data_source_type, notice: 'Data source type was successfully created.' }
        format.json { render :show, status: :created, location: @data_source_type }
      else
        format.html { render :new }
        format.json { render json: @data_source_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_source_types/1
  # PATCH/PUT /data_source_types/1.json
  def update
    respond_to do |format|
      if @data_source_type.update(data_source_type_params)
        format.html { redirect_to @data_source_type, notice: 'Data source type was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_source_type }
      else
        format.html { render :edit }
        format.json { render json: @data_source_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_source_types/1
  # DELETE /data_source_types/1.json
  def destroy
    @data_source_type.destroy
    respond_to do |format|
      format.html { redirect_to data_source_types_url, notice: 'Data source type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_source_type
      @data_source_type = DataSourceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_source_type_params
      params.require(:data_source_type).permit(:type_name)
    end
end
