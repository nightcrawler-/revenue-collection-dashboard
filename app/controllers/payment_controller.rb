class PaymentController < ApplicationController

  def new
    list_wards
    list_revenue_subgroups
    list_payment_modes
  end

  def submit
    payment = Google::Apis::PaymentApiV1::Payment.new
    revenue = Google::Apis::RevenueApiV1::Revenue.new
    payment_mode = Google::Apis::PaymentModeApiV1::PaymentMode.new

    revenue.update!(id: params[:revenue])
    payment_mode.update!(id: params[:payment][:payment_mode_id])

    payment.update!(
        amount: params[:amount],
        p_user_id: session[:user_id],
        id: -1,
        narration: params[:narration],
        revenue: revenue,
        receipt_number: '#'+ SecureRandom.random_number(36 ** 10).to_s(36).upcase,
        transaction_date: Time.now.getutc.to_datetime,
        payment_mode: payment_mode)

    insert_payment(payment)
    get_payment payment.receipt_number #get the db auto genned number

    redirect_to action: 'show', id: @payment_result.receipt_number


  end

  def show
    get_payment params[:id]
  end


  def filter

    @revenues = list_revenues params[:sub_id], params[:ward_id]
    respond_to do |format|
      format.html { render json: @revenues }
    end

  end


end
