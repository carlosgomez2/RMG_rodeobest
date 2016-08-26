# Custom header
# Deface::Override.new(:virtual_path => "spree/shared/_header",
#                  :name => "header_background",
#                  :replace => "div#spree-header",
#                  :text => '<div class="container">
#                    <header id="header" class="row" data-hook>
#                      <div class="container container-custom">
#                        <div class="row row-logo">
#                          <figure id="logo" class="col-md-12 col-sm-3 text-center" data-hook>
#                            <%= logo %>
#                          </figure>
#                        </div>
#                      </div>
#                    </header>
#                    <div class="container nav-custom">
#                     <div class="row">
#                       <nav class="col-md-12 nav-main-custom">
#                         <div id="main-nav-bar" class="navbar">
#                           <ul class="nav navbar-nav" data-hook>
#                             <li id="home-link" data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
#                             <li id="link-to-cart" data-hook>
#                               <noscript>
#                                 <%= link_to Spree.t(:cart), "/cart" %>
#                               </noscript>
#                               &nbsp;
#                             </li>
#                             <script>Spree.fetch_cart()</script>
#                           </ul>
#                           <ul id="nav-bar" class="nav navbar-nav navbar-right" data-hook>
#                             <li>
#                               <%= render :partial => "spree/shared/login_bar" %>
#                             </li>
#                             <li id="search-bar" data-hook>
#                               <%= render :partial => "spree/shared/search" %>
#                             </li>
#                           </ul>
#                         </div>
#                       </nav>
#                     </div>
#                    </div>
#                  </div>')


# Deface::Override.new(:virtual_path => "spree/shared/_header",
#                  :name => "header_background",
#                  :replace => "div#spree-header",
#                  :text => '
#                  <header id="header" data-hook>
#                    <div class="logo">
#                      <figure id="logo" class="text-center" data-hook>
#                        <%= logo %>
#                      </figure>
#                    </div>
#                  </header>
#
#                  <nav class="nav-main-custom">
#                   <div id="main-nav-bar" class="navbar">
#                     <ul class="nav navbar-nav" data-hook>
#                       <li id="home-link" data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
#                       <li id="link-to-cart" data-hook>
#                         <noscript>
#                           <%= link_to Spree.t(:cart), "/cart" %>
#                         </noscript>
#                         &nbsp;
#                       </li>
#                       <script>Spree.fetch_cart()</script>
#                     </ul>
#                     <ul id="nav-bar" class="nav navbar-nav navbar-right" data-hook>
#                       <li>
#                         <%= render :partial => "spree/shared/login_bar" %>
#                       </li>
#                       <li id="search-bar" data-hook>
#                         <%= render :partial => "spree/shared/search" %>
#                       </li>
#                     </ul>
#                   </div>
#                  </nav>
#
#                  ')


# Deface::Override.new(:virtual_path => "spree/shared/_header",
#                  :name => "header_background",
#                  :replace => "div#spree-header",
#                  :text => '
#                  <header id="header" data-hook>
#                    <div class="logo">
#                      <figure id="logo" class="text-center" data-hook>
#                        <%= logo %>
#                      </figure>
#                    </div>
#
#                    <nav class="nav-main-custom">
#                      <div id="main-nav-bar" class="navbar">
#                        <ul class="nav navbar-nav" data-hook>
#                          <li id="home-link" data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
#                          <li id="link-to-cart" data-hook>
#                            <noscript>
#                               <%= link_to Spree.t(:cart), "/cart" %>
#                            </noscript>
#                             &nbsp;
#                          </li>
#                          <script>Spree.fetch_cart()</script>
#                          <li>
#                            <%= render :partial => "spree/shared/login_bar" %>
#                          </li>
#                          <li id="search-bar" class="search-bar" data-hook>
#                            <%= render :partial => "spree/shared/search" %>
#                          </li>
#                        </ul>
#                     </div>
#                    </nav>
#                  </header>
#
#                  ')


Deface::Override.new(:virtual_path => "spree/shared/_header",
                 :name => "header_background",
                 :replace => "div#spree-header",
                 :text => '
                 <div class="navbar-wrapper">
                       <div class="">

                         <nav class="navbar navbar-static-top">
                           <div class="">
                             <div class="navbar-header">
                               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                 <span class="sr-only">Toggle navigation</span>
                                 <span class="icon-bar"></span>
                                 <span class="icon-bar"></span>
                                 <span class="icon-bar"></span>
                               </button>
                               <div class="logo">
                                 <figure id="logo" class="text-center" data-hook>
                                   <%= logo %>
                                 </figure>
                               </div>
                             </div>
                             <div id="navbar" class="navbar-collapse collapse">
                              <div class="container">
                               <ul class="nav navbar-nav data-hook">
                                   <li id="home-link" data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
                                   <li id="link-to-cart" data-hook>
                                     <noscript>
                                        <%= link_to Spree.t(:cart), "/cart" %>
                                     </noscript>
                                      &nbsp;
                                   </li>
                                   <script>Spree.fetch_cart()</script>
                                   <li>
                                     <%# render :partial => "spree/shared/login_bar" %>
                                     <% if spree_current_user %>
                                       <li><%= link_to Spree.t(:my_account), spree.account_path %></li>
                                       <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
                                     <% else %>
                                       <li id="link-to-login"><%= link_to Spree.t(:login), spree.login_path %></li>
                                     <% end %>
                                   </li>
                                 <li id="search-bar" data-hook>
                                   <%# render :partial => "spree/shared/search" %>
                                   <% @taxons = @taxon && @taxon.parent ? @taxon.parent.children : Spree::Taxon.roots %>

                                   <%= form_tag spree.products_path, :method => :get, class: "navbar-form" do %>
                                     <div class="form-group">
                                       <% cache(cache_key_for_taxons) do %>
                                         <%= select_tag :taxon,
                                               options_for_select([[Spree.t(:all_departments), '']] +
                                                                     @taxons.map {|t| [t.name, t.id]},
                                                                     @taxon ? @taxon.id : params[:taxon]), "aria-label" => "Taxon", class: "form-control" %>
                                       <% end %>
                                     </div>
                                     <div class="form-group">
                                       <%= search_field_tag :keywords, params[:keywords], :placeholder => Spree.t(:search), class: "form-control" %>
                                     </div>
                                     <%= submit_tag Spree.t(:search), :name => nil, class: "btn btn-success" %>
                                   <% end %>
                                   <!-- End search -->
                                 </li>
                               </ul>
                              </div>
                             </div>
                           </div>
                         </nav>

                       </div>
                     </div>

                 ')
