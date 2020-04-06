<div class="stepsbar">

    <div class="step {if $step eq 1}active{/if} {if $step > 1}stepover{/if}"><a>{$LANG.cartchooseproduct}</a></div>

    {*<div class="step {if $step eq 2}active{/if} {if $step > 2}stepover{/if}"><a>{$LANG.orderdomainoptions}</a></div>*}

    <div class="step {if $step eq 3}active{/if} {if $step > 3}stepover{/if}"><a>{$LANG.orderconfigure}</a></div>

    <div class="step {if $step eq 4}active{/if} {if $step > 4}stepover{/if}"><a href="cart.php?a=view">{$LANG.orderconfirmorder}</a></div>

    <div class="step {if $step eq 5}active{/if} {if $step > 5}stepover{/if}"><a href="cart.php?a=checkout">{$LANG.ordercheckout}</a></div>
	
	<div style="clear:both"></div>
</div>
<div class="clearfix"></div>