module ProductsHelper

  def price_range(product)
    if product.variants.any?
      min = product.variants.map(&:price).min
      max = product.variants.map(&:price).max
      prices = min == max ? "Price: #{max}" : "Pricing: #{min}<small>(min)</small>  to #{max}<small>(max)</small>".html_safe
    else
      "Price: 0"
    end
  end
end
