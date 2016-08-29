# Head
Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
        name: 'Custom layout HEAD',
        replace: "[data-hook='inside_head']",
        text: "
          <%= render partial: 'spree/shared/head' %>
        ")
# Body
Deface::Override.new(:virtual_path  => 'spree/layouts/spree_application',
        name: 'Custom layout BODY',
        replace: "[data-hook='body']",
        text: "
        <!-- Header  -->
        <div class='shipping-free text-center'>
        <p>Free shipping up to $100 USD</p>
        </div>
        <%= render partial: 'spree/shared/google_analytics.js' %>
        <%= render partial: 'spree/shared/header' %>

        <!-- Heder bg -->
        <% if current_page?(root_path) %>
        <div class='landing-background'>
        </div>
        <% end %>

        <div class='container'>
          <div class='row' data-hook>
            <%= breadcrumbs(@taxon) %>

            <%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %>

            <div id='content' class='<%= !content_for?(:sidebar) ? 'col-sm-12' : 'col-sm-8 col-md-9' %>' data-hook>
              <%= flash_messages %>
              <%= yield %>
            </div>

            <%= yield :templates %>
          </div>
        </div>

        <!-- Subscribe -->
        <% if current_page?(root_path) %>
          <section id='subscribe'>
            <div class='content-subscribe'>
              <p>Subscribe to get the latest news from Rodeobest </p>
              <form id='subscription_form' class='subscription_form'>
                <input id='subscribe_email' placeholder='Email' type='text'></input>
                <input class='submit_subscribe' value='Subscribe' type='submit'></input>
              </form>
            </div>
          </section>

        <!-- Footer -->
          <div id='footer' class='container'>
            <div class='col-md-4 text-center'>
              <h3>Our Headquarters</h3>
              <p>Rodeo Avenue, Beverly Hills, Ca.</p>
              <p>Zip Code: 50000</p>
              <p>Phone: (555) 123 5678</p>
            </div>
            <div class='col-md-4 text-center'>
              <h3>Get to Know Us</h3>
              <p>Our Story</p>
              <p>Our Team</p>
              <h3>Get Help</h3>
              <p>Help</p>
              <p>Returns and Exchanges</p>
              <p>Shipping</p>
              <p>Payment Methods</p>
            </div>
            <div class='col-md-4 text-center'>
              <h3>Social Network</h3>
              <p>
                <%= link_to 'https://facebook.com' do%>
                  <%= fa_icon 'facebook', text: 'Rodeobest on Facebook' %>
                <% end %>
              </p>
              <p>
                <%= link_to 'https://twitter.com' do%>
                  <%= fa_icon 'twitter', text: 'Rodeobest on Twitter' %>
                <% end %>
              </p>
              <p>
                <%= link_to 'https://snapchat.com' do%>
                  <%= fa_icon 'snapchat', text: 'Rodeobest on Snapchat' %>
                <% end %>
              </p>
              <p>
                <%= link_to 'https://instagram.com' do%>
                  <%= fa_icon 'instagram', text: 'Rodeobest on Instagram' %>
                <% end %>
              </p>
            </div>
          </div>
          <div class='col-md-12 copy'>
            <ul class='float-rigth footer_ul mid_with text-center'>
              <%= link_to 'Work with Us', root_path, class: 'footer_li' %>
              <%= link_to 'Terms and Conditions', root_path, class: 'footer_li' %>
              <%= link_to 'Privacy Policy', root_path, class: 'footer_li' %>
            </ul>
            <p class='mid_with text-center'> &copy; All Rights Reserved 2016 | Rodeobest by RMG</p>
          </div>
        <% end %>
        ")
