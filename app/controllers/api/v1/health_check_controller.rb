module Api::V1
  class HealthCheckController < ApiController
    def index
      render json: {
        status: :ok,
      }
    end
  end
end
