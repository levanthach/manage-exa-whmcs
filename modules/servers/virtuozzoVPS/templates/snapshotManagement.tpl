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


                jQuery('.mgCreateSnapshot').click(function() {
                    var that = $(this);

                    jQuery('#greyout').fadeIn();
                    jQuery('#popupcontainer').slideDown();

                    jQuery('#snapshotList .form-container').hide();

                    var contentb = jQuery('#snapshotList').clone(true);

                    contentb.find('.hideitjs, .globalAlerts').hide();

                    contentb.find('#' + that.val()).show();

                    jQuery('#popuphtml').html(contentb);

                });

                jQuery('.mgRemoveSnapshot').click(function() {
                    var that = $(this);

                    jQuery('#greyout').fadeIn();
                    jQuery('#popupcontainer').slideDown();

                    jQuery('#snapshotList .form-container').hide();

                    var contentb = jQuery('#snapshotList').clone(true);

                    contentb.find('.hideitjs, .globalAlerts').hide();

                    contentb.find('#mgRemoveSnapshot input[name="snapshotID"]').val(that.data('id'));


                    contentb.find('#mgRemoveSnapshot').show();




                    jQuery('#popuphtml').html(contentb);

                });

                jQuery('.mgRevertSnapshot').click(function() {
                    var that = $(this);

                    jQuery('#greyout').fadeIn();
                    jQuery('#popupcontainer').slideDown();

                    jQuery('#snapshotList .form-container').hide();

                    var contentb = jQuery('#snapshotList').clone(true);

                    contentb.find('.hideitjs, .globalAlerts').hide();

                    contentb.find('#mgRevertSnapshot input[name="snapshotID"]').val(that.data('id'));


                    contentb.find('#mgRevertSnapshot').show();


                    jQuery('#popuphtml').html(contentb);

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

<div id="snapshotList">
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

    <div class="form-container" id="mgCrateSnapshot" style="display: none;">
        <form method="post" action="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=snapshotManagement" class="form-horizontal" id="createSnapshotForm">
            <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.modal.createSnapshot}</h2>

            <div class="control-group">
                <label class="control-label" for="name">{$lang.modal.name}</label>
                <div class="controls">
                    <input class="caModalInput" type="text" name="name" id="name" placeholder="{$lang.modal.nameDescription}">
                </div>
            </div>
            <div class="center">
                <button class="btn btn-success" type="submit" name="mg-action" value="createSnapshot">{$lang.modal.button.create}</button>
                <button class="btn btn-warning backupCancel cancel" type="button" >{$lang.modal.button.cancel}</button>
            </div>
        </form>
    </div>


    <div class="form-container" id="mgRemoveSnapshot" style="display: none;">
        <form method="post" action="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=snapshotManagement" class="form-horizontal" id="createSnapshotForm">
            <div class="alert alert-block alert-error">
                <h4 class="alert-heading">{$lang.modal.removeInformation}</h4>
                <br />
                <input type="hidden" name="snapshotID" value=""/>
                <p>
                    <button type="submit" name="mg-action" value="removeSnapshot" class="btn btn-danger" >{$lang.modal.button.delete}</button>
                    <button type="button" class="btn btn-warning cancel" >{$lang.modal.button.cancel}</button>
                </p>
            </div>
        </form>
    </div>

    <div class="form-container" id="mgRevertSnapshot" style="display: none;">
        <form method="post" action="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=snapshotManagement" class="form-horizontal" id="createSnapshotForm">
            <div class="alert alert-block alert-error">
                <h4 class="alert-heading">{$lang.modal.revertInformation}</h4>
                <br />
                <input type="hidden" name="snapshotID" value=""/>
                <p>
                    <button type="submit" name="mg-action" value="revertSnapshot" class="btn btn-danger" >{$lang.modal.button.revert}</button>
                    <button type="button" class="btn btn-warning cancel" >{$lang.modal.button.cancel}</button>
                </p>
            </div>
        </form>
    </div>




    <div class="hideitjs">

        <div class="spacer"></div>

        <h2 class="pull-left" style="font-size: 24px;">{$lang.title.snapshotList} <a href="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=snapshotManagement"><i class="icon-refresh iconBack" style="float: bottom!important;"></i></a></h2>
        <button class="btn btn-success pull-right mgCreateSnapshot" type="button" name="go" value="mgCrateSnapshot">{$lang.button.createSnapshot}</button>

        <div class="clearfix"></div>

        <table class="table" style="margin-top: 5px;" >
            <thead>
                <tr>
                    <th>{$lang.table.name}</th>
                    <th>{$lang.table.date}</th>
                    <th>{$lang.table.size}</th>
                    <th width=60">{$lang.table.revert}</th>
                    <th width="30">{$lang.table.remove}</th>
                </tr>
            </thead>
            <tbody>
                {if $snapshotList|@count >0}
                    {foreach from=$snapshotList item=item}

                        <tr>
                            <td>{$item['Name']}</td>
                            <td>{$item['DateTime']}</td>
                            {if $item['action']}
                                <td colspan="3">{$lang.action[$item['action']]}</td>
                            {else}
                                <td>{$item['Runtime']['Size']}</td>
                                <td><i data-name="{$item['Name']}" data-id="{$item['@attributes']['guid']}" class="mgRevertSnapshot icon-hdd"></i></td>
                                <td><i data-name="{$item['Name']}" data-id="{$item['@attributes']['guid']}" class="mgRemoveSnapshot icon-remove"></i></td>
                            {/if}
                        </tr>
                    {/foreach}
                {else}
                    <tr>
                        <td colspan="6" style="text-align:center;">{$lang.nosnpashot}</td>
                    </tr>
                {/if}
            </tbody>
        </table> 

    </div>
</div>

<style type="text/css">
    #popuphtml {
        -moz-box-shadow:    3px 3px 5px 6px #ccc;
        -webkit-box-shadow: 3px 3px 5px 6px #ccc;
        box-shadow:         3px 3px 5px 6px #ccc;
    }
    .modalCheck{
        margin-left: 0px!important;
    }
    .modalCheckLab{
        padding-left: 0px!important;
    }
    .radioText{
        margin-left: 20px;
    }
    #mg-wrapper .datepicker {
        min-width: 110px!important;
        height: 34px!important;
        text-align: center;
    }
    .dayNumberInput{
        margin-left: 5px!important;
    }
    .caButtonTitle {
        margin-top: 20px!important;
    }
    .iconBack{
        margin-bottom: 1px!important;
    }
    .caModalInput{
        height: 34px!important;
    }
    .modalTimeSelect{
        max-width: 70px;
    }
    .caModalSelect{
        max-width: 290px;
    }
</style>            