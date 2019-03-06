Deface::Override.new(
  virtual_path: 'spree/admin/shared/_configuration_menu',
  name: 'Add comment_types to admin_configurations_menu',
  insert_bottom: "[data-hook = 'admin_configurations_sidebar_menu']",
  text: '<%= configurations_sidebar_menu_item I18n.t('spree.comment_types'), admin_comment_types_path %>'
)