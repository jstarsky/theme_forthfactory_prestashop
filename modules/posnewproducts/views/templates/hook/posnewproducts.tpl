<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
	<div class="pos_new_product  product_block_container" 
		data-items="{$slider_options.number_item}" 
		data-speed="{$slider_options.speed_slide}"
		data-autoplay="{$slider_options.auto_play}"
		data-time="{$slider_options.auto_time}"
		data-arrow="{$slider_options.show_arrow}"
		data-pagination="{$slider_options.show_pagination}"
		data-move="{$slider_options.move}"
		data-pausehover="{$slider_options.pausehover}"
		data-lg="{$slider_options.items_lg}"
		data-md="{$slider_options.items_md}"
		data-sm="{$slider_options.items_sm}"
		data-xs="{$slider_options.items_xs}"
		data-xxs="{$slider_options.items_xxs}">
			{if $title}
			<div class="pos_title">
				 <h2>
					{$title}
				</h2>
			</div>
			{/if}
			{$rows= $slider_options.rows}
			<div class="block-content">
				<div class=" pos_content row">
					<div class="newSlide owl-carousel">
					{foreach from=$products item=product name=myLoop}
						{if $smarty.foreach.myLoop.index % $rows == 0 || $smarty.foreach.myLoop.first }
						<div class="item-product">
						{/if}
							<article class="js-product-miniature item_in" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
								<div class="img_block">
									{block name='product_thumbnail'}
									  <a href="{$product.url}" class="thumbnail product-thumbnail">
										<img
										  src = "{$product.cover.bySize.home_default.url}"
										  alt = "{$product.cover.legend}"
										  data-full-size-image-url = "{$product.cover.large.url}"
										>
										   {hook h="rotatorImg" product=$product}
									  </a>
									{/block}
									{block name='product_flags'}
									  <ul class="product-flag">
										{foreach from=$product.flags item=flag}
											{if $flag.type == "discount"}
												{continue}
											{/if}
											<li class="{$flag.type}"><span>{$flag.label}</span></li>
										{/foreach}
									  </ul>
									{/block}
									<ul class="add-to-links">
										<li class="cart">
											{include file='catalog/_partials/customize/button-cart.tpl' product=$product}
										</li>
										<li class="quick-view">
											{block name='quick_view'}
											<a class="quick_view" href="#" data-link-action="quickview" title="{l s='Quick view' d='Shop.Theme.Actions'}">
											<i class="lnr lnr-eye"></i>{l s='Quick view' d='Shop.Theme.Actions'}
											</a>
											{/block}
										</li>
										<li class="wishlist">
											{hook h='displayProductListFunctionalButtons' product=$product}
										</li>
									</ul>
								</div>
								<div class="product_desc">
								  {block name='product_name'}
								   <h3 itemprop="name"><a href="{$product.url}" class="product_name">{$product.name|truncate:25:'...'}</a></h3>
								  {/block}
								  {block name='product_reviews'}
									<div class="hook-reviews">
									{hook h='displayProductListReviews' product=$product}
									</div>
								  {/block}
								  {block name='product_price_and_shipping'}
									{if $product.show_price}
									  <div class="product-price-and-shipping">
										{if $product.has_discount}
										  {hook h='displayProductPriceBlock' product=$product type="old_price"}

										  <span class="regular-price">{$product.regular_price}</span>
										  {if $product.discount_type === 'percentage'}
											<span class="discount-percentage">{$product.discount_percentage}</span>
										  {/if}
										{/if}

										{hook h='displayProductPriceBlock' product=$product type="before_price"}

										<span itemprop="price" class="price {if $product.has_discount} price_sale{/if}">{$product.price}</span>

										{hook h='displayProductPriceBlock' product=$product type='unit_price'}

										{hook h='displayProductPriceBlock' product=$product type='weight'}
									  </div>
									{/if}
								  {/block}
									{block name='product_description_short'}
										<div class="product-desc" itemprop="description">{$product.description_short nofilter}</div>
									{/block}
									<ul class="add-to-links">
										<li class="cart">
											{include file='catalog/_partials/customize/button-cart.tpl' product=$product}
										</li>
										<li class="quick-view">
											{block name='quick_view'}
											<a class="quick_view" href="#" data-link-action="quickview" title="{l s='Quick view' d='Shop.Theme.Actions'}">
											<i class="lnr lnr-redo"></i>{l s='Quick view' d='Shop.Theme.Actions'}
											</a>
											{/block}
										</li>
										<li class="wishlist">
											{hook h='displayProductListFunctionalButtons' product=$product}
										</li>
									</ul>
									{block name='product_variants'}
										{if $product.main_variants}
										  {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
										{/if}
									 {/block}
								</div>
							</article>
						{if $smarty.foreach.myLoop.iteration % $rows == 0 || $smarty.foreach.myLoop.last  }
						</div>
						{/if}
					{/foreach}
					</div>
				</div>
			</div>
	</div>
</div>
