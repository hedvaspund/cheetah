class Api::V1::ProductsController < ActionController::API
  include Rails::Pagination

  def show
    producer = Producer.find(params[:producer_id])
    # should be paginate json: ... 
    render json: {
      data: {
        producer: producer.as_json
      }
    }
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Unable to find producer" }.to_json

  end 
end
