Deface::Override.new(
  virtual_path: 'spree/orders/edit',
  name: 'comments_for_order',
  insert_before: '[data-hook='cart_buttons']',
  partial: 'spree/orders/comment',
  disabled: false
  )
