# Product
Deface::Override.new(:virtual_path  => 'spree/products/show',
        name: 'Custom layout Products',
        replace: "[data-hook='product_show']",
        text: "
        <div class='col-md-6 col-sm-5' data-hook='product_left_part'>
          <div data-hook='product_left_part_wrap'>
            <div id='product-images' data-hook='product_images'>
              <div id='main-image' class='panel panel-default' data-hook>
                <div class='panel-body text-center'>
                  <%= render :partial => 'image' %>
                </div>
              </div>
              <div id='thumbnails' data-hook>
                <%= render :partial => 'thumbnails' %>
              </div>
            </div>

            <div data-hook='product_properties'>
              <%= render :partial => 'properties' %>
            </div>

            <div data-hook='promotions'>
              <%= render :partial => 'promotions' %>
            </div>
          </div>

          <div id='taxon-crumbs' class=' five ' data-hook='product_taxons'>
            <%= render :partial => 'taxons' %>
          </div>

        </div>

        <div class='col-md-6 col-sm-7' data-hook='product_right_part'>
          <div data-hook='product_right_part_wrap'>
            <div id='product-description' data-hook='product_description'>
              <h1 class='product-title' itemprop='name'><%= @product.name %></h1>

              <div class='well' itemprop='description' data-hook='description'>
                <%= product_description(@product) %>
              </div>

              <div id='cart-form' data-hook='cart_form'>
                <%= render :partial => 'cart_form' %>
              </div>
            </div>


          </div>
        </div>
        ")