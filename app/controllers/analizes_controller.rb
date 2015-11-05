class AnalizesController < ApplicationController
  before_action :set_customers, only: [:index]
  before_action :set_customerproduct, only: [:index, :total_count ]
  before_action :total_count, only: [:index, :set_products]

  def index

  end

  private
  
    def set_customers
        Customer.all
    end

    def set_customerproduct
      @cproducts =  CustomerProduct.all
    end
end
