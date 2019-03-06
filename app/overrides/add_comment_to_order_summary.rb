Deface::Override.new(
  virtual_path: 'spree/checkout/_summary',
  name: 'comment_for_order',
  insert_bottom: "order_summary",
  partial: 'spree/orders/comment'
)