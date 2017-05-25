class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :update, :destroy]

  # GET /examples
  def index
    @examples = Example.all

    render json: @examples
  end

  # GET /examples/1
  def show
    render json: @example
  end

  # POST /examples
  def create
    @example = Example.new(example_params)
    if @example.save
      render json: @example, status: :created, location: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  def update
    if @example.update(example_params)
      render json: @example
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  def destroy
    @example.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example
      @example = Example.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def example_params
      params.require(:example).permit(:id, :created_at, :updated_at)
      #params.fetch(:example, {})
    end
end
