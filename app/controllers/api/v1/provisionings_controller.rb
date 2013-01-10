module Api
  module V1
    class ProvisioningsController < ApplicationController

      def index
        respond_with Provisioning.all
      end

      def show
        respond_with Provisioning.find(params[:id])
      end

      def create 
        respond_with Provisioning.create(params[:provisioning])
      end

      def update
        respond_with Provisioning.update(params[:id], params[:provisioning])
      end

      def destroy
        respond_with Provisioning.destroy(params[:id])
      end
    end
  end
end
