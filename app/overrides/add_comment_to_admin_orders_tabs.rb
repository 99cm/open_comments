Deface::Override.new(
  virtual_path: 'spree/admin/shared/_order_submenu',
  name: 'add_comments_to_admin_order_tabs',
  insert_bottom: "[data-hook='admin_order_tabs']",
  partial: 'spree/admin/orders/tab'
)