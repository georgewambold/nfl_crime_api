class ApplicationController < ActionController::API
  def pagination_metadata(name)
    scope = instance_variable_get("@#{name}")

    page = {}
    page[:current_page] = scope.current_page
    page[:total_record_count] = scope.total_count
    page[:records_per_page] = Kaminari.config[:default_per_page]
    page
  end
end
