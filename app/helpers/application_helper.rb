module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end

  def number_to_price(number)
    number = number * 0.94 if I18n.locale == :es
    number_to_currency(number)
  end
end
