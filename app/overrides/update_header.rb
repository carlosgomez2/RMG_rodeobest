# Custom header
Deface::Override.new(:virtual_path => "spree/shared/_header",
                 :name => "header_background",
                 :replace => "div#spree-header",
                 :text => '<div class="container">
                   <header id="header" class="row" data-hook>
                     <div class="container">
                       <div class="row">
                         <figure id="logo" class="col-md-12 col-sm-3 text-center" data-hook>
                           <%= logo %>
                         </figure>
                       </div>
                     </div>
                   </header>
                   <div class="container">
                    <div class="row">
                      <nav class="col-md-12">
                        <div id="main-nav-bar" class="navbar">
                          <ul class="nav navbar-nav" data-hook>
                            <li id="home-link" data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
                            <li id="link-to-cart" data-hook>
                              <noscript>
                                <%= link_to Spree.t(:cart), "/cart" %>
                              </noscript>
                              &nbsp;
                            </li>
                            <script>Spree.fetch_cart()</script>
                          </ul>
                          <ul id="nav-bar" class="nav navbar-nav navbar-right" data-hook>
                            <li>
                              <%= render :partial => "spree/shared/login_bar" %>
                            </li>
                            <li id="search-bar" data-hook>
                              <%= render :partial => "spree/shared/search" %>
                            </li>
                          </ul>
                        </div>
                      </nav>
                    </div>
                   </div>
                 </div>')
