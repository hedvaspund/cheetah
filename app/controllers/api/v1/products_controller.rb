class Api::V1::ProductsController < ActionController::API
  # skip_before_action :verify_authenticity_token
  include Rails::Pagination

  def show
    producer = Producer.find(params[:producer_id])
    paginate json: producer
    # paginate json: {
    #   data: {
    #     producer: producer.as_json
    #   }
    # }
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Unable to find producer" }.to_json

  end 
end
