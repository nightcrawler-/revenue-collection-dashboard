class PaymentController < ApplicationController
  def new
    list_wards
    list_revenue_subgroups
    list_payment_modes
  end

  def show
    @woa = 'bom bam'
  end

  def filter

    @revenues = list_revenues params[:sub_id], params[:ward_id]

    #respond_with @revenues
    respond_to do |format|
      format.html { render json: @revenues }
end

  end


end
