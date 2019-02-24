Deface::Override.new(
  virtual_path: 'spree/orders/_form',
  name: 'comment_for_order',
  insert_before: "<tr class="cart-subtotal">",
  partial: 'spree/orders/comment',
  disabled: false
)