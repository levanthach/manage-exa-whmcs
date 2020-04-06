{**********************************************************************
 *  Parallels Cloud Servers 
 * 
 *
 *  CREATED BY MODULESGARDEN       ->       http://modulesgarden.com
 *  CONTACT                        ->       contact@modulesgarden.com
 *  Author                         ->       Michal Czech
 *
 *
 *
 * This software is furnished under a license and may be used and copied
 * only  in  accordance  with  the  terms  of such  license and with the
 * inclusion of the above copyright notice.  This software  or any other
 * copies thereof may not be provided or otherwise made available to any
 * other person.  No title to and  ownership of the  software is  hereby
 * transferred.
 *
 *
 **********************************************************************}
{literal}
    <script type="text/javascript">
        jQuery(document).ready(function() {
            action('ipsList', 'delete');
            action('ipsList', 'orderIP');
        });
    </script>
{/literal}
<div id="greyout"></div>
<div id="popupcontainer">
    <div id="popuphtml"></div>
</div>
<div class="spacer"></div>

<h2 class="pull-left" style="font-size: 24px;">{$lang.title}</h2>

<form method="post" action="" class="form-horizontal" id="ipsList" style="margin-bottom: 0px;">
        <input type="hidden" name="itemid" value="" class="id" />
        <input type="hidden" name="timeToken" value="{$timeToken}" />
        {if $success || $error}
            <div class="alert alert-{if $error}error{else}success{/if}">
                <button class="close caclose" data-dismiss="alert" name="orderIP" type="button">×</button>
                {if $error}
                    {$error} 
                {else}
                    {$success}
                {/if}
            {if $invoiceid}{$lang.preinvoice} <a href="viewinvoice.php?id={$invoiceid}">{$lang.Invoice}</a>{/if}
        </div>
    {/if}

    <div class="alert alert-block alert-danger fade in deleteAlert jshidden" >
        <h4 class="alert-heading">{$lang.deleteSure} <span class="name"></span> ?</h4>
        <p>
            <button type="submit" name="go" value="remove" class="btn btn-danger" >{$lang.lblRemove}</button>
            <button type="button" class="btn btn-warning btn-inverse cancel" >{$lang.lblCancel}</button>
        </p>
    </div>

    <div class="alert alert-block alert-info fade in orderIPAlert jshidden" style="padding-bottom: 40px; margin-bottom: 0px;">
        <h4 class="alert-heading" style="text-align: center;">{$lang.orderSure} <span class="name"></span>?</h4>
        {if $allowPublic && $allowPrivate}
            <p style="text-align: center; margin-left: 120px;">
                <label class="radio pull-left" style="margin-right: 10px; padding-top: 5px;">
                    <input type="radio" name="ipType" value="public" checked>
                    {$lang.publicIP}
                </label>
                <label class="radio pull-left" style="margin-right: 10px; padding-top: 5px;">
                    <input type="radio" name="ipType" value="private">
                    {$lang.privateIP}
                </label>
            </p>
        {else}
            {if $allowPublic}
                <input type="hidden" name="ipType" value="public" />
             {/if}
             {if $allowPrivate}
                 <input type="hidden" name="ipType" value="private" />
             {/if}
        {/if}
        <div style="padding-top: 30px;">
            <button type="button" class="btn btn-warning btn-inverse cancel" style="float: right; margin-left: 10px;">{$lang.lblCancel}</button>
            <button type="submit" name="go" value="orderIP" class="btn btn-danger" style="float: right; margin-left: 10px;">{$lang.lblOrder}</button>
        </div>        
        <div class="clear"></div>

    </div>


    <div class="ipheading">
        <h2>{$lang.available}</h2>

    </div>


    <table class="table table-striped" >
        <thead>
            <tr>
                <th>{$lang.ip}</th>
                <th>{$lang.mask}</th>
                <th>{$lang.mac}</th>
                <th>{$lang.networkId}</th>
            </tr>
        </thead>
        <tbody>
            {if $device|@count >0}
                {foreach from=$device key=key item=item}
                    <tr>
                        <td>{$item.ip}</td>
                        <td>{$item.netmask}</td>
                        <td>{$item.mac}</td>
                        <td>{$item.type}</td>
                    </tr>
                {/foreach}
            {else}
                <tr>
                    <td colspan="4" style="text-align:center;"><strong>{$lang.noip}</strong></td>
                </tr>
            {/if}
        </tbody>
    </table>

    {if $allowOrder}    
        <div class="ipOrder2 hideitjs" style="padding-bottom: 45px;">
            <button type="button" name="orderNew" class="btn btn-success btn-large pull-right orderIP">{$lang.orderNew}</button>
        </div>
    {/if}

    <div class="clear"></div>

</form>
<style type="text/css">
    #popuphtml {
        -moz-box-shadow:    3px 3px 5px 6px #ccc;
        -webkit-box-shadow: 3px 3px 5px 6px #ccc;
        box-shadow:         3px 3px 5px 6px #ccc;
    }
    .caButtonTitle {
        margin-top: 20px!important;
    }
</style>    