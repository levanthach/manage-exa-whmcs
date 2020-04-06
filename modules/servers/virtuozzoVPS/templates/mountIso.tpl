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
    <script type="text/javascript" src="modules/servers/virtuozzoVPS/jquery-ui-1.10.3.custom.min.js"></script>
{literal}
    <script type="text/javascript">

        jQuery(document).ready(function () {
            var selectedImage = null;
            var selectedCDRom = null;
            var selectedBootable = null;

            jQuery('select[name="selectedOsTemplate"]').on('change', function () {
                selectedImage = $(this).val()
            });

            jQuery('select[name="selectedCDRom"]').on('change', function () {
                selectedCDRom = $(this).val()
            });

            jQuery('select[name="selectedBootable"]').on('change', function () {
                selectedBootable = $(this).val()
            });

            jQuery('.mgMountIso').click(function () {
                var that = $(this);

                jQuery('#greyout').fadeIn();
                jQuery('#popupcontainer').slideDown();

                jQuery('#mountIso .form-container').hide();

                var contentb = jQuery('#mountIso').clone(true);

                contentb.find('.hideitjs, .globalAlerts').hide();
                contentb.find('#' + that.val()).show();
                jQuery('#popuphtml').html(contentb);
                if (selectedImage === null) {
                    jQuery('#osTemplate').val(jQuery('select[name="selectedOsTemplate"]').val());
                } else {
                    jQuery('#osTemplate').val(selectedImage);
                }

                if (selectedCDRom === null) {
                    jQuery('#cdRom').val(jQuery('select[name="selectedCDRom"]').val());
                } else {
                    jQuery('#cdRom').val(selectedCDRom);
                }
                jQuery('#bootable').val(selectedBootable);
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

<div id="mountIso">
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

    <div class="form-container" id="mountIsoModal" style="display: none;">
        <form method="post" action="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=mountIso"
              class="form-horizontal" id="mountIsoForm">
            <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.modal.mountTitle}</h2>
            <p class="center">
                {$lang.modal.mountContent}
            </p>
            <div class="control-group hidden">
                <label class="control-label" for="name">{$lang.modal.name}</label>
                <div class="controls">
                    <input class="caModalInput" type="text" name="osTemplate" id="osTemplate"
                           placeholder="{$lang.modal.nameDescription}">
                    <input class="caModalInput" type="text" name="cdRom" id="cdRom"
                           placeholder="{$lang.modal.nameDescription}">
                    <input type="hidden" name="bootable" id="bootable" value="0"
                           placeholder="{$lang.modal.nameDescription}">

                </div>
            </div>
            <div class="center">
                <button class="btn btn-danger" type="submit" name="mg-action"
                        value="mountIso">{$lang.modal.button.mount}</button>
                <button class="btn btn-warning backupCancel cancel" type="button">{$lang.modal.button.cancel}</button>
            </div>
        </form>
    </div>


    <div class="hideitjs">

        <div class="spacer"></div>

        <h2 class="pull-left" style="font-size: 24px;">{$lang.title.rebuild}</h2>

        <div class="clearfix"></div>
        <div class="product-container">
            <div class="product-container-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>{$lang.cdrom}</th>
                        <th>{$lang.iso}</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    {if $usedCDRom|@count >0}
                        {foreach from=$usedCDRom key=key item=item}
                            <tr>
                                <td>{$item.name}</td>
                                <td>{$item.iso}</td>
                                <td width="10%">
                                    <form method="post"
                                          action="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=mountIso"
                                          class="form-horizontal" id="unmountIsoForm">
                                        <input type="hidden" name="cdRom" value="{$item.id}"/>
                                        <button type="submit" class="btn btn-danger" name="mg-action"
                                                value="unmountIso">{$lang.actionUnmount}</button>
                                    </form>

                                </td>
                            </tr>
                        {/foreach}
                    {else}
                        <tr>
                            <td colspan="3" style='text-align:center;vertical-align:middle'>
                                <strong>{$lang.nocdrom}</strong></td>
                        </tr>
                    {/if}
                    </tbody>
                </table>
                {if $status != 3}
                    <div class="alert alert-error">
                        {$lang.stopToMount}
                    </div>
                {/if}
                <div class="form-group">
                    <label for="osTemplate">{$lang.osTemplate}</label>
                    <select class="form-control" name="selectedOsTemplate">
                        {foreach from=$isoList key=key item=item}
                            <option value="{$key}">{$item}</option>
                            {foreachelse}
                            <option value="0">{$lang.noAvailableTemplate}</option>
                        {/foreach}

                    </select>
                </div>
                <div class="form-group">
                    <label for="selectedCDRom">{$lang.cdRom}</label>
                    <select class="form-control" name="selectedCDRom">
                        {foreach from=$cdRomList key=key item=item}
                            <option value="{$key}">{$item}</option>
                            {foreachelse}
                            <option value="0">{$lang.noAvailableCdRom}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="selectedBootable">{$lang.bootable}</label>
                    <select name="selectedBootable" id="selectedBootable" class="form-control">
                        <option value="0">{$lang.no}</option>
                        <option value="1">{$lang.yes}</option>
                    </select>
                </div>

                <div class="form-group text-right">
                    <button class="btn btn-success mgMountIso" value="mountIsoModal"
                            {if $status != 3}disabled{/if}>{$lang.actionMount}</button>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    #popuphtml {
        -moz-box-shadow: 3px 3px 5px 6px #ccc;
        -webkit-box-shadow: 3px 3px 5px 6px #ccc;
        box-shadow: 3px 3px 5px 6px #ccc;
    }

    .product-container {
        margin: 0;
        border: 1px solid #ddd;
    }

    .product-container .product-container-body {
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