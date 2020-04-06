{if $tintucpost != null}
<div class="row">
	<div class="col-md-12">
		{if 1==2}<h2 class="post_title">{$tintucpost['post_title']}</h2>{/if}
		<p class="post_date">Ngày đăng: {$tintucpost['post_date']}</p>
		{if 1==2}<p class="post_excerpt_single"><b>{$tintucpost['post_excerpt']}</b></p>{/if}
		<div class="post_content">{$tintucpost_ct}</div>
		
		<br>
		<p class="announcement-commnet-title">
			<strong>Bình luận</strong>
		</p>
		
		<div id="fb-root"></div>
		<script>
			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) return;
				js = d.createElement(s); js.id = id;
				js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
		</script>
		<div class="fb-comments" data-href="http://exa.vn/{$tintucpost['post_slug']}-{$tintucpost['id']}" data-width="100%" data-numposts="5"></div>
	</div>
</div>
{/if}