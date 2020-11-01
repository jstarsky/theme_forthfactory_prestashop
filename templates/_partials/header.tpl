{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='header_nav'}
<nav class="header-nav-top">
	<div class="container">
		
		<div class="hidden-lg-up  mobile">
			<div class="row row-mobile">
				<div class="mobile-left col-mobile col-md-4 col-xs-4">
					<div class="float-xs-left" id="menu-icon">
						<i class="material-icons d-inline">&#xE5D2;</i>
					</div>
					<div id="mobile_top_menu_wrapper" class="row hidden-lg-up" style="display:none;">
						<div class="top-header-mobile">
							<div id="_mobile_static_nav"></div>
						</div>			
						<div class="menu-close"> 
							{l s='menu' d='Shop.Theme.Global'} <i class="material-icons float-xs-right">arrow_back</i>
						</div>
						<div class="menu-tabs">							
							<div class="js-top-menu-bottom">												
								<div id="_mobile_megamenu"></div>
							</div>
						</div>
					 </div>
				</div>
				<div class="mobile-center col-mobile col-md-4 col-xs-4">
					<div id="_mobile_logo"></div>
				</div>
				<div class="col-mobile col-md-4 col-xs-4 mobile-right">
					<div id="_mobile_cart_block"></div>
					<div class="setting_top localiz_block dropdown js-dropdown">
						<span class="lnr lnr-menu-circle" data-toggle="dropdown"></span>
						<ul class="content-setting dropdown-menu">
							{hook h='displayNav1'}
						</ul>
					</div>
				</div>
			</div>
			<div id="_mobile_search_block"></div>
		</div>
	</div>
</nav>
{/block}
{block name='header_top'}
  <div class="header-top hidden-md-down">
	   <div class="container-fluid">
		   <div class="row">
			<div class="col col-xs-12 col-md-2 col-lg-2" id="_desktop_logo">
				{if $page.page_name == 'index'}
				<a href="{$urls.base_url}">
				<img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
				</a>
				{else}
				<a href="{$urls.base_url}">
				<img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
				</a>
				{/if}
			</div>
			<div class="col-xs-12 col-md-6 col-lg-6">
				{hook h='displayMegamenu'}
			</div>
			<div class="col-xs-12 col-md-4 col-lg-4 display_top">
				<div class="setting_top dropdown js-dropdown">
					<span class="lnr lnr-menu-circle" data-toggle="dropdown"></span>
					<div class="content-setting dropdown-menu">
						{hook h='displayNav1'}
					</div>
				</div>
				{hook h='displayTop'}
			</div>
		  </div>
	  </div>
  </div>
  {hook h='displayNavFullWidth'}
{/block}
