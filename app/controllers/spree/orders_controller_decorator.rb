Spree::OrdersController.class_eval do
  # Shows the current incomplete order from the session
  def edit_with_comments
    edit_without_comments
    @order.comments.build if @order.comments.empty? # At the moment the first user is set to be the creator
  end
  alias_method_chain :edit, :comments
  end
end
