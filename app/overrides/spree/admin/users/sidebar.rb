Deface::Override.new(
  virtual_path: 'spree/admin/users/_tabs',
  name: 'add_avalara_information_tab_to_user_edit',
  insert_bottom: 'ul.tabs',
  text: <<-ERB
    <% if can?(:display, @user) %>
      <li<%== ' class="active"' if current == :avalara_information %>>
        <%= link_to t("spree.admin.user.avalara_information"), spree.avalara_information_admin_user_path(@user) %>
      </li>
    <% end %>
ERB
)