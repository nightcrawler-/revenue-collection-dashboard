module PaymentHelper

  def list_wards
    @WardsApi = Google::Apis::WardsApiV1 #alias wards api
    @wards_api = @WardsApi::WardsApiService.new
    @wards = @wards_api.list.items
  end

  def list_revenue_subgroups
    @RevenueSubgroupApi = Google::Apis::RevenueSubgroupApiV1 #alias revenuesubgroups api
    @revenue_subgroup_api = @RevenueSubgroupApi::RevenueSubgroupApiService.new #init service

    @revenue_subgroups = @revenue_subgroup_api.list.items
  end

  def list_payment_modes
    @PaymentModeApi = Google::Apis::PaymentModeApiV1 #alias payment mode api
    @payment_mode_api = @PaymentModeApi::PaymentModeApiService.new #init service

    @payment_modes = @payment_mode_api.list.items
  end

  def list_revenues(sub_id, ward_id)
    @RevenueApi = Google::Apis::RevenueApiV1 # alias revenues api
    @revenue_api = @RevenueApi::RevenueApiService.new #init service

    @revenues = @revenue_api.list(revenue_sub_group_id: sub_id, sub_county_group_id: ward_id)
  end

  def insert_payment(payment)
    @PaymentApi = Google::Apis::PaymentApiV1 #alias payment api
    @payment_api = @PaymentApi::PaymentApiService.new
    @payment_api.insert(payment);
  end

  def get_payment(receipt_number)
    @PaymentApi = Google::Apis::PaymentApiV1 #alias payment api
    @payment_api = @PaymentApi::PaymentApiService.new
    @payment_result = @payment_api.get(receipt_number)

  end


end
