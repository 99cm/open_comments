Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment",
                    :name => "comments_for_order_shipment",
                    :insert_after => "[data-hook='admin_shipment_form']",
                    :partial => "spree/admin/shipments/list_tab",
                    :disabled => false)
