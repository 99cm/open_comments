Spree::Admin::ShipmentsController.class_eval do
  def comments
    @order = @shipment.order
    @comment_types = Spree::CommentType.where(applies_to: 'Shipment')
  end
end
