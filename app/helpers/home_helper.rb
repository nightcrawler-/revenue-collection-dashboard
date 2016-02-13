module HomeHelper
  require 'google/apis/payment_api_v1'


  def list_payments
    @PaymentApi = Google::Apis::PaymentApiV1 #alias payment api
    @paymentApi = @PaymentApi::PaymentApiService.new

    @payments = @paymentApi.list(limit: 10).items

  end
end
