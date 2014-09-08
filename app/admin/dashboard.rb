ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
     # span class: "blank_slate" do
      #  span I18n.t("active_admin.dashboard_welcome.welcome")
        #small I18n.t("active_admin.dashboard_welcome.call_to_action")
      #end
    #end

section "Recent Created order" do

table_for Order.order("created_at desc").limit(8) do
      column :id do |order|
         link_to order.id, admin_orders_path
        end
      column :pay_type 
      column :name
      column "Date of Purchase", :created_at 

    end
    strong { link_to "View All orders", admin_orders_path }
  end

section "Recent Created Products" do
    table_for Product.order("created_at desc").limit(5) do
      column :title
      column :price
      column :created_at
    end
strong { link_to "View All Products", admin_products_path }
end

section " Recent Registered Users" do
table_for User.order("created_at desc").limit(5) do
      column :name
      column :created_at
    end
  strong { link_to "View All users", admin_users_path }  
  end












    # Here is an example of a simple dashboard with columns and panels.
    
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  # content
end
end
