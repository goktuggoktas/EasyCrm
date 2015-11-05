class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def total_count

      @total_product = CustomerProduct.group(:product_id).count
      @total_product.delete(0)
      @id = @total_product.key(@total_product.values.max)
      @total_customer = CustomerProduct.group(:customer_id).count
      @total_customer.delete(nil)
      @ids = @total_customer.key(@total_customer.values.max)
      @most_values = @total_customer.values.max
      @customer = Customer.find(@ids)
      @product = Product.find(@id)

  end
end
