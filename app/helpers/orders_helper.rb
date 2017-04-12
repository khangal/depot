module OrdersHelper
  def options_for_payment
    Order.pay_types.transform_keys { |key|
      I18n.t("pay_type.#{key.parameterize.underscore}")
    }
  end
end
