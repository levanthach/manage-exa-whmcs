
{foreach from=$tintuc item=post}
	<div class="row">
		<div class="col-sm-4 col-md-3 col-lg-3">
			<a href="/{$post['post_slug']}-{$post['id']}">
			{if $post['post_image']==''}
				<img src="/no-image.png" style="max-width:200px; border:1px solid #f3f3f3; border-radius: 3px; padding:3px"/>
			{else}
				<img src="{$post['post_image']}" style="max-width:200px; border:1px solid #f3f3f3; border-radius: 3px; padding:3px"/>
			{/if}
			</a>
		</div>
		<div class="col-sm-8 col-md-9 col-lg-9">
			<h2 class="post_title"><a href="/{$post['post_slug']}-{$post['id']}">{$post['post_title']}</a></h2>
			<p class="post_date">Ngày đăng: {$post['post_date']}</p>
			<p class="post_excerpt">{$post['post_excerpt']}...</p>
		</div>
	</div>
	<hr>
{/foreach}

<div class="text-center">{$tintuc_pagi}</div>