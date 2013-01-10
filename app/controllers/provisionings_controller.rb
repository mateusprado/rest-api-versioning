class ProvisioningsController < ApplicationController
  def index
    @provisionings = Provisioning.all

    render json: @provisionings
  end

  def show
    @provisioning = Provisioning.find(params[:id])

    render json: @provisioning
  end

  def new
    @provisioning = Provisioning.new

    render json: @provisioning
  end

  def create
    @provisioning = Provisioning.new(params[:provisioning])

    if @provisioning.save
      render json: @provisioning, status: :created, location: @provisioning
    else
      render json: @provisioning.errors, status: :unprocessable_entity
    end
  end

  def update
    @provisioning = Provisioning.find(params[:id])

    if @provisioning.update_attributes(params[:provisioning])
      head :no_content
    else
      render json: @provisioning.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @provisioning = Provisioning.find(params[:id])
    @provisioning.destroy

    head :no_content
  end
end
