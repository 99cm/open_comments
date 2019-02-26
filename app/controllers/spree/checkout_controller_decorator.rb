Spree::CheckoutController.class_eval do
  # Shows the current incomplete order from the session
  def comments
    if params[:order]['comment'].present?
      @order = current_order || Order.incomplete.find_or_initialize_by(token: cookies.signed[:token])
      @comment = Spree::Comment.new(commentable_type: 'Spree::Order', commentable_id: order.id)
      @comment.user = spree_current_user
      authorize! :create, @comment, cookies.signed[:token]
    end
  end
end