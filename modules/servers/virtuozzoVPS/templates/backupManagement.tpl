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
                action('backupList', 'delete');
                action('backupList', 'restore');
                action('backupList', 'deleteSchedule');

                jQuery('.createBackupBtn').click(function() {
                    var that = $(this);

                    jQuery('#greyout').fadeIn();
                    jQuery('#popupcontainer').slideDown();

                    jQuery('#backupList .form-container').hide();

                    var contentb = jQuery('#backupList').clone(true);

                    contentb.find('.hideitjs, .alert-success').hide();

                    contentb.find('#' + that.val()).show();

                    jQuery('#popuphtml').html(contentb);
                    jQuery('input[name="recurringOneTimeDate"]').removeClass('hasDatepicker');
                    jQuery('input[name="recurringOneTimeDate"]').datepicker("destroy");
                    jQuery('input[name="recurringOneTimeDate"]').datepicker({dateFormat: "yy-mm-dd"});
                });

                jQuery('.backupCancel').click(function() {
                    jQuery('#backupList .form-container').hide();
                    jQuery('.createBackupBtn').show();
                });

                jQuery(document).on('change', 'input[name=recurringType]', function() {
                    jQuery('#pcsCreateSchedule .recurring').hide();
                    jQuery('#pcsCreateSchedule').find('div[data-reccuring=' + jQuery(this).val() + ']').show();
                });

                jQuery('input[name=recurringDailyType]').change(function() {
                    if (jQuery(this).val() === 'eachdays')
                    {
                        jQuery('input[name=recurringTypeDailyEvery]').removeAttr('disabled');
                    }
                    else
                    {
                        jQuery('input[name=recurringTypeDailyEvery]').attr('disabled', 'disabled');
                    }
                });

                function PCSshowError(element)
                {
                    jQuery(element).parents('.control-group').addClass('error');
                    jQuery(element).parents('.control-group').find('.help-inline').show();
                }

                function PCShideError(element)
                {
                    jQuery(element).parents('.control-group').removeClass('error');
                    jQuery(element).parents('.control-group').find('.help-inline').hide();
                }

                jQuery(document).on('click', 'button[value=createSchedule], button[value="updateSchedule"]', function() {

                    var name = jQuery('input[name=nameSchedule]').val();

                    if (!name.length)
                    {
                        PCSshowError('input[name=nameSchedule]')
                        return false;
                    }
                    else
                    {
                        PCShideError('input[name=nameSchedule]');
                    }

                    if (jQuery('input[name=recurringDailyType]:checked').val() === 'eachdays' && jQuery('input[name=recurringType]:checked').val() === 'daily')
                    {
                        if (jQuery('input[name=recurringTypeDailyEvery]').val() < 1)
                        {
                            PCSshowError('input[name=recurringTypeDailyEvery]');
                            return false;
                        }
                        else
                        {
                            PCShideError('input[name=recurringTypeDailyEvery]');
                        }
                    }
                    else
                    {
                        PCShideError('input[name=recurringTypeDailyEvery]');
                    }

                    if (jQuery('input[name=recurringType]:checked').val() === 'weekly')
                    {
                        if (jQuery('input[name=recurringTypeWeeklyEvery]').val() < 1)
                        {
                            PCSshowError('input[name=recurringTypeWeeklyEvery]');
                            return false;
                        }
                        else
                        {
                            PCShideError('input[name=recurringTypeWeeklyEvery]');
                        }

                        if (!jQuery('input[name^="recurringTypeWeeklyEveryDay"]:checked').length > 0)
                        {
                            PCSshowError('input[name^="recurringTypeWeeklyEveryDay"]');
                            return false;
                        }
                        else
                        {
                            PCShideError('input[name^="recurringTypeWeeklyEveryDay"]');
                        }
                    }
                });

                jQuery('input[name=recurringType]:checked').change();
                jQuery('input[name="recurringOneTimeDate"]').datepicker({dateFormat: "yy-mm-dd"});

                jQuery('.editSchedule').on('click', function(e)
                {
                    jQuery("#backupList > .id").val(jQuery(this).attr('data-id'));
                    jQuery("#backupList > .goInput").val('editSchedule');

                    jQuery('#greyout').fadeIn();
                    jQuery('#popupcontainer').slideDown();

                    jQuery('#popuphtml').html('Please wait while loading...');

                    jQuery.post(jQuery('#backupList').attr('action'), jQuery('#backupList').serialize(), function(result)
                    {
                        //jQuery('#backupList .form-container').hide();

                        var content = jQuery(result).find('#backupList');

                        content.find('.hideitjs').hide();
                        content.find('#pcsEditSchedule').show();

                        jQuery(document).on('change', 'input[name=recurringType]', function() {
                            content.find('.recurring').hide();
                            content.find('div[data-reccuring=' + jQuery(this).val() + ']').show();
                        });

                        jQuery('input[name=recurringType]:checked').trigger('change');
                       
                        content.find('input[name="recurringOneTimeDate"]').datepicker({dateFormat: "yy-mm-dd"});

                        //jQuery('.datepicker').datepicker({dateFormat: "yy-mm-dd"});
                        //content.find('input.datepicker').datepicker('destroy').datepicker({dateFormat: "yy-mm-dd"});

                        jQuery('#popuphtml').html(content);
                    });

                    e.preventDefault();
                });

                jQuery('#backupList').click(function() {
                    //jQuery("#backupList > .id").val(jQuery(this).attr('data-id'));
                    //jQuery("#backupList > .goInput").val('editSchedule');
                    //jQuery("#backupList").submit();
                });
            });
        </script>
    {/literal}
    <div id="greyout"></div>
    <div id="popupcontainer">
        <div id="popuphtml"></div>
    </div>
{/if}

<form method="post" action="" class="form-horizontal backupFrom" id="backupList">
    <input type="hidden" name="itemid" value="{$editSchedule.id}" class="id" />
    <input type="hidden" name="go" value="" class="goInput" />
    <input type="hidden" name="timeToken" value="{$timeToken}" />

    {if $success || $error}
        <div class="alert alert-{if $error}error{else}success{/if}">
            <button class="close caclose" data-dismiss="alert" type="button">×</button>
            {if $error}
                {$error} 
            {else}
                {$success}
            {/if}
        </div>
    {/if}

    <div class="form-container" id="pcsCreate" style="display: none;">
        <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.createLbl}</h2>

        <div class="control-group">
            <label class="control-label" for="name">{$lang.lblDesc}</label>
            <div class="controls">
                <input class="caModalInput" type="text" name="name" id="name" placeholder="{$lang.lblDesc}">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="type">{$lang.lblType}</label>
            <div class="controls">
                <select name="type" id="type" class="caModalSelect">
                    {foreach from=$lang.type key=key item=item}
                        <option value="{$key}">{$item}</option>
                    {/foreach}
                </select>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="remove">{$lang.removePrev}</label>
            <div class="controls">
                <label class="checkbox modalCheckLab">
                    <input class="modalCheck" type="checkbox" name="remove" id="remove" value="on">
                </label>
            </div>
        </div>
        <div class="center">
            <button class="btn btn-success" type="submit" name="go" value="create">{$lang.createLbl}</button>
            <button class="btn btn-warning backupCancel cancel" type="button" >{$lang.lblCancel}</button>
        </div>
    </div>

    <div class="form-container" id="{if !$editSchedule}pcsCreateSchedule{else}pscEditShedule{/if}" {if !$editSchedule && !$pcsCreateScheduleClear}style="display: none;"{/if}>
        {if $editSchedule}
            <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.editshelduleLbl}</h2>
        {else}
            <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.createshelduleLbl}</h2>
        {/if}

        <div class="control-group">
            <label class="control-label" for="nameSchedule">{$lang.lblDesc}</label>
            <div class="controls">
                <input class="caModalInput" type="text" name="nameSchedule" id="nameSchedule" placeholder="{$lang.lblDesc}" value="{$editSchedule.name}">
                <span class="help-inline" style="display: none;">{$lang.proviceDesc}</span>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="typeSchedule">{$lang.lblType}</label>
            <div class="controls">
                <select name="typeSchedule" id="typeSchedule" class="caModalSelect">
                    {foreach from=$lang.type key=key item=item}
                        <option {if $key == $editSchedule.backup_type}selected{/if} value="{$key}">{$item}</option>
                    {/foreach}
                </select>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="removeSchedule">{$lang.removePrev}</label>
            <div class="controls">
                <label class="checkbox modalCheckLab">
                    <input class="modalCheck" type="checkbox" name="removeSchedule" id="removeSchedule" value="on" {if $editSchedule.removeprev == 'on'}checked="checked"{/if}>
                </label>
            </div>
        </div>

        <div class="control-group" >
            <label class="control-label">{$lang.recurrencepatt}</label>
            <div class="controls">
                <label class="radio modalCheckLab">
                    <input class="modalCheck" type="radio" name="recurringType" value="once" {if !$editSchedule}checked{/if} {if $editSchedule.type == 'once'}checked{/if}>
                    <span class="radioText">{$lang.sheduletypes.once}</span>
                </label>
                <label class="radio modalCheckLab">
                    <input class="modalCheck" type="radio" name="recurringType" value="daily" {if $editSchedule.type == 'daily'}checked{/if}>
                    <span class="radioText">{$lang.sheduletypes.daily}</span>
                </label>
                <label class="radio modalCheckLab">
                    <input class="modalCheck" type="radio" name="recurringType" value="weekly" {if $editSchedule.type == 'weekly'}checked{/if}>
                    <span class="radioText">{$lang.sheduletypes.weekly}</span>
                </label>
            </div>
        </div>

        <div class="control-group recurring onetime" data-reccuring="once" style="display: none;">
            <label class="control-label">{$lang.sheduletypes.once}</label>
            <div class="controls">
                <label>{$lang.date}</label>
                <input type="text" class="input-small datepicker" {if $editSchedule.date}value="{$editSchedule.date}"{else}value="{$currentDate}"{/if}  name="recurringOneTimeDate" />
            </div>
            <div class="controls">
                <label>{$lang.time}</label>
                <select name="recurringOneTimeHour" class="modalTimeSelect">
                    {foreach from=$hour item=item}
                        <option {if $editSchedule.hour==$item}selected{/if} >{$item}</option>
                    {/foreach}
                </select>
                : 
                <select name="recurringOneTimeMinutes" class="modalTimeSelect">
                    {foreach from=$minutes item=item}
                        <option {if $editSchedule.minutes==$item}selected{/if}>{$item}</option>
                    {/foreach}
                </select>
            </div>
        </div>

        <div class="control-group recurring" data-reccuring="daily" style="display: none;">
            <label class="control-label">{$lang.sheduletypes.daily}</label>
            <div class="controls dailyRadio">
                <label class="radio modalCheckLab">
                    <input class="oradio modalCheck"  type="radio" name="recurringDailyType" value="eachdays" {if !$editSchedule}checked{/if} {if $editSchedule.daily == 'eachdays'}checked{/if}>
                    <span class="radioText">{$lang.daily.every}</span>
                </label>
                <input type="text" name="recurringTypeDailyEvery" class="input-mini dayNumberInput" placeholder="1" value="{$editSchedule.everday}" />
                <span>{$lang.daily.every2}</span>
                <span class="help-inline" style="display: none;">{$lang.proviceNumberDays}</span>
                <label class="radio modalCheckLab">
                    <input class="oradio modalCheck"  type="radio" name="recurringDailyType" value="everyday" {if $editSchedule.daily == 'everyday'}checked{/if}>
                    <span class="radioText">{$lang.daily.day}</span>
                </label>
                <label class="radio modalCheckLab">
                    <input class="oradio modalCheck" type="radio" name="recurringDailyType" value="everyweek" {if $editSchedule.daily == 'everyweek'}checked{/if}>
                    <span class="radioText">{$lang.daily.weekday}</span>
                </label>
            </div>
        </div>  

        <div class="control-group recurring" data-reccuring="weekly" style="display: none;">
            <label class="control-label">{$lang.sheduletypes.weekly}</label>
            <div class="controls">
                <label>
                    <span>{$lang.weekly.every}</span>
                    <input type="text" name="recurringTypeWeeklyEvery" class="input-mini" placeholder="1" value="{$editSchedule.everyweek}" />
                    <span>{$lang.weekly.every2}</span>
                    <span class="help-inline" style="display: none;">{$lang.proviceNumberWeeks}</span>
                </label>
                {foreach from=$lang.weeklyd key=key item=item}
                    <label class="checkbox modalCheckLab">
                        <input class="modalCheck" type="checkbox" name="recurringTypeWeeklyEveryDay[]" value="{$key}" {if $editSchedule.everyweekdays[$key] == 'on'}checked{/if}>
                        <span class="radioText">{$item}</span>
                    </label>
                {/foreach}
                <span class="help-inline" style="display: none;">{$lang.selectDayofWeek}</span>
            </div>
        </div>  

        <div class="center">
            {if $editSchedule}
                <button class="btn btn-success" type="submit" name="go" value="updateSchedule">{$lang.updateshelduleLbl}</button>
            {else}
                <button class="btn btn-success" type="submit" name="go" value="createSchedule">{$lang.createshelduleLbl}</button>
            {/if}
            <button class="btn btn-warning backupCancel cancel" type="button" >{$lang.lblCancel}</button>
        </div>   
    </div>

    <div class="clearfix"></div>    

    <div class="alert alert-block alert-error fade in deleteAlert jshidden">
        <h4 class="alert-heading">{$lang.deleteSure}<span class="name"></span>{$lang.backupSure}</h4>
        <p>
            <button type="submit" name="go" value="remove" class="btn btn-danger caButtonTitle" >{$lang.lblRemove}</button>
            <button type="button" class="btn btn-warning cancel caButtonTitle" >{$lang.lblCancel}</button>
        </p>
    </div>

    <div class="alert alert-block alert-error fade in restoreAlert jshidden">
        <h4 class="alert-heading">{$lang.restoreSure} <span class="name"></span>{$lang.backupSure}</h4>
        <br />
        <input type="checkbox" name="force" value="on" style="float: left; margin-top: 5px;" /><span style="margin-left:5px;padding-top: 5px;">{$lang.force}</span>
        <p>
            <button type="submit" name="go" value="restore" class="btn btn-danger caButtonTitle" >{$lang.lblRestore}</button>
            <button type="button" class="btn btn-warning cancel caButtonTitle" >{$lang.lblCancel}</button>
        </p>
    </div>    

    <div class="alert alert-block alert-error fade in deleteScheduleAlert jshidden">
        <h4 class="alert-heading">{$lang.deleteScheduleSure} <span class="name"></span></h4>
        <p>
            <button type="submit" name="go" value="deleteSchedule" class="btn btn-danger caButtonTitle" >{$lang.lblRemove}</button>
            <button type="button" class="btn btn-inverse cancel caButtonTitle" >{$lang.lblCancel}</button>
        </p>
    </div>    

    <div class="hideitjs">    

        {if $shared>0}
            <h3>{$lang.used} {$used.value} {$used.unit} {$lang.of} {$limit.value} {$limit.unit} {$lang.limit}</h3>
            <div class="progress progress-striped">
                <div class="bar" style="width: {$shared}%;"></div>
            </div>
        {/if}


        <div class="spacer"></div>    

        <h2 class="pull-left" style="font-size: 24px;">{$lang.listLbl}<a href="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=backupManagement"><i class="icon-refresh iconBack" style="float: bottom!important;"></i></a></h2>      
        <button class="btn btn-success pull-right createBackupBtn" type="button" name="go" value="pcsCreate">{$lang.createLbl}</button>
        {if $editSchedule}
            <button class="btn btn-success pull-right createBackupBtn" style="margin: 0px 5px;" type="submit" name="go" value="pcsCreateScheduleClear">{$lang.createScheduleLbl}</button>
        {else}
            <button class="btn btn-success pull-right createBackupBtn" style="margin: 0px 5px;" type="button" name="go" value="pcsCreateSchedule">{$lang.createScheduleLbl}</button>
        {/if}

        <div class="clearfix"></div>   

        <table class="table" style="margin-top: 5px;" >
            <thead>
                <tr>
                    <th>{$lang.lblDesc}</th>
                    <th>{$lang.lblDate}</th>
                    <th>{$lang.lblSize}</th>
                    <th>{$lang.lblType}</th>
                    <th width=60">{$lang.lblRestore}</th>
                    <th width="30">{$lang.lblRemove}</th>
                </tr>
            </thead>
            <tbody>
                {if $list|@count >0}
                    {foreach from=$list item=item}
                        {if $item.action}
                            <tr>
                                <td>{$item.name}</td>
                                <td>{$item.time}</td>
                                <td colspan="4">{$lang.action[$item.action]}</td>
                            </tr>
                        {else}
                            <tr>
                                <td>{$item.name}</td>
                                <td>{$item.time}</td>
                                <td>{$item.size.value} {$item.size.unit}</td>
                                <td>{$lang.type[$item.type]}</td>
                                <td><i data-name="{$item.name}" data-id="{$item.id}" class="restore icon-hdd"></i></td>
                                <td><i data-name="{$item.name}" data-id="{$item.id}" class="delete icon-remove"></i></td>
                            </tr>
                        {/if}
                    {/foreach}
                {else}
                    <tr>
                        <td colspan="6" style="text-align:center;">{$lang.nobackup}</td>
                    </tr>
                {/if}
            </tbody>
        </table> 

        <div class="spacer"></div>    
        <h2 style="font-size: 24px; margin-bottom: 5px;">{$lang.listSchedules}</h2>     

        <table class="table" >
            <thead>
                <tr>
                    <th>{$lang.lblDesc}</th>
                    <th>{$lang.lblDateCreated}</th>
                    <th>{$lang.lblType}</th>
                    <th>{$lang.sheduleType}</th>
                    <th>{$lang.runInDay}</th>
                    <th>{$lang.lastUpdate}</th>
                    <th width="55">{$lang.lblEdit}</th>
                    <th width="30">{$lang.lblRemove}</th>
                </tr>
            </thead>
            <tbody>
                {if $scheduledList|@count >0}
                    {foreach from=$scheduledList item=item}
                        <tr>
                            <td>{$item.name}</td>
                            <td>{$item.created}</td>
                            <td>{$lang.type[$item.backup_type]}</td>
                            <td>{$lang.sheduletypes[$item.type]}</td>
                            <td>{$item.details}</td>
                            <td>{$item.lastupdate}</td>
                            <td><i data-id="{$item.id}" class="editSchedule icon-edit"></i></td>
                            <td><i data-name="{$item.name}" data-id="{$item.id}" class="deleteSchedule icon-remove"></i></td>
                        </tr>
                    {/foreach}
                {else}
                    <tr>
                        <td colspan="8" style="text-align:center;">{$lang.noscheludedBackup}</td>
                    </tr>
                {/if}
            </tbody>
        </table> 
    </div>     
</form>
            
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