Deface::Override.new(
  virtual_path: 'spree/admin/orders/_shipment',
  name: 'comments_for_order_shipment',
  insert_after: "[data-hook = 'admin_shipment_form']",
  text: "<%= render('spree/admin/shared/comments'), commentable: shipment %>",
  disabled: false )
