{if $breadcrumb.count != 1}
<div class="container">
	<div class="breadcrumb_container">
		{if $page.page_name == 'category'}
		 {if $category.name}
		   <div class="name_category"><h2>{$category.name}</h2></div>
		{/if}
		{/if}
		<nav data-depth="{$breadcrumb.count}" class="breadcrumb">
		  <ol itemscope itemtype="http://schema.org/BreadcrumbList">
			{foreach from=$breadcrumb.links item=path name=breadcrumb}
			  <li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
				<a itemprop="item" href="{$path.url}">
				  <span itemprop="name">{$path.title}</span>
				</a>
				<meta itemprop="position" content="{$smarty.foreach.breadcrumb.iteration}">
			  </li>
			{/foreach}
		  </ol>
		</nav>
	</div>
</div>
{/if}