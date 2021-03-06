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

{if !$editSchedule}
    <script type="text/javascript" src="modules/servers/virtuozzoVPS/jquery-ui-1.10.3.custom.min.js" ></script>
    {literal}
        <script type="text/javascript">

            jQuery(document).ready(function() {
                var selectedImage = null;

                jQuery('select[name="selectedOsTemplate"]').on('change', function(){
                    selectedImage = $(this).val()
                });

                jQuery('.mgRebuildServer').click(function() {
                    var that = $(this);

                    jQuery('#greyout').fadeIn();
                    jQuery('#popupcontainer').slideDown();

                    jQuery('#rebuild .form-container').hide();

                    var contentb = jQuery('#rebuild').clone(true);

                    contentb.find('.hideitjs, .globalAlerts').hide();
                    contentb.find('#' + that.val()).show();
                    jQuery('#popuphtml').html(contentb);
                    if(selectedImage === null){
                        jQuery('#osTemplate').val(jQuery('select[name="selectedOsTemplate"]').val());
                    }
                    else{
                        jQuery('#osTemplate').val(selectedImage);
                    }

                });



                // jQuery('#mgCrateSnapshot').on('submit', function(event){
                //     event.preventDefault();
                //
                //
                // })

            });
        </script>
    {/literal}
    <div id="greyout"></div>
    <div id="popupcontainer">
        <div id="popuphtml"></div>
    </div>
{/if}

<div id="rebuild">
    {if $success || $error}
        <div class="alert alert-{if $error}error{else}success{/if} globalAlerts">
            <button class="close caclose" data-dismiss="alert" type="button">×</button>
            {if $error}
                {$error}
            {else}
                {$success}
            {/if}
        </div>
    {/if}

    <div class="form-container" id="rebuildModal" style="display: none;">
        <form method="post" action="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=rebuild" class="form-horizontal" id="rebuildServerForm">
            <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.modal.rebuildTitle}</h2>
            <p class="center">
                {$lang.modal.rebuildContent}
            </p>
            <div class="control-group hidden">
                <label class="control-label" for="name">{$lang.modal.name}</label>
                <div class="controls">
                    <input class="caModalInput" type="text" name="osTemplate" id="osTemplate" placeholder="{$lang.modal.nameDescription}">
                </div>
            </div>
            <div class="center">
                <button class="btn btn-danger" type="submit" name="mg-action" value="rebuildServer">{$lang.modal.button.rebuild}</button>
                <button class="btn btn-warning backupCancel cancel" type="button" >{$lang.modal.button.cancel}</button>
            </div>
        </form>
    </div>






    <div class="hideitjs">

        <div class="spacer"></div>

        <h2 class="pull-left" style="font-size: 24px;">{$lang.title.rebuild}</h2>

        <div class="clearfix"></div>
        <div class="product-container">

            <div class="product-container-body">
                {if $status != 3}
                    <div class="alert alert-error">
                        {$lang.stopToReinstall}
                    </div>
                {/if}
                <div class="form-group">
                    <label for="osTemplate">{$lang.osTemplate}</label>
                    <select class="form-control" name="selectedOsTemplate">
                        {foreach from=$osList key=key item=item}
                            <option value="{$key}">{$item}</option>
                        {foreachelse}
                            <option value="0">{$lang.noAvailableTemplate}</option>
                        {/foreach}

                    </select>
                </div>
                <div class="form-group text-right">
                    <button class="btn btn-danger mgRebuildServer" value="rebuildModal" {if $status != 3}disabled{/if}>{$lang.actionRebuild}</button>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    #popuphtml {
        -moz-box-shadow:    3px 3px 5px 6px #ccc;
        -webkit-box-shadow: 3px 3px 5px 6px #ccc;
        box-shadow:         3px 3px 5px 6px #ccc;
    }
    .product-container {
        margin: 0;
        border: 1px solid #ddd;
    }
    .product-container .product-container-body{
        padding: 20px;
    }
    .product-container .product-container-header {
        background-color: #ddd;
        padding: 10px;
    }
    .product-container .product-container-header span {
        font-weight: bold;
        font-size: 20px;
    }

    h2 {
        font-weight: 500;
    }
</style>            