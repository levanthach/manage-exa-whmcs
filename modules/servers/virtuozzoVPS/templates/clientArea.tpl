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
<link href="modules/servers/virtuozzoVPS/style.css" rel="stylesheet">
<script type="text/javascript" src="modules/servers/virtuozzoVPS/script.js" ></script>
<script type="text/javascript" src="modules/servers/virtuozzoVPS/jquery-ui-1.10.3.custom.min.js" ></script>
{if $loadBootstrap}
    <link href="modules/servers/virtuozzoVPS/assets/css/bootstrap.css" rel="stylesheet">
{/if}
{literal}
    <script type="text/javascript">
        jQuery(document).ready(function(){
           jQuery('.hiddenPass').click(function(){
                jQuery(this).parent().children('strong').show();
                jQuery(this).hide();
           });
           action('pcsClientArea','reinstall');
        });
    </script>
{/literal}
<div id="greyout" class="backgroundShadow"></div>
<div id="popupcontainer">
    <div id="popuphtml" class="autoheight">
        <div class="form-container" id="mgAddSshKey" style="display: none;">
                <form method="post" action="clientarea.php?action=productdetails&id={$productId}&mg-action=addSshKey" class="form-horizontal" style="padding: 0px 10px 0px 10px;">
                    <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.modal.addSshKey}</h2>
                    <div class="alert alert-info">
                        {$lang.modal.description}
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="5" name="sshKey" placeholder="{$lang.modal.placeholder}"></textarea>
                    </div>
                    <div class="center">
                        <button class="btn btn-success" type="submit" name="mg-action" value="addKey">{$lang.modal.button.add}</button>
                        <button class="btn btn-warning cancel" type="button" >{$lang.modal.button.cancel}</button>
                    </div>
                </form>
        </div>
    </div>
</div>
<div id="popupcontainer2">
    <div id="popuphtml" class="autoheight">
        <div class="form-container" id="mgChangeHostname" style="display: none;">
            <form method="post" action="clientarea.php?action=productdetails&id={$productId}" class="form-horizontal" style="padding: 0px 10px 0px 10px;">
                <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.modal.changeHostname}</h2>
                <div class="control-group">
                    <div class="controls">
                        <label class="control-label" for="hostname">{$lang.modal.hostname}</label>&nbsp;
                        <input class="caModalInput" type="text" name="hostname" id="hostname" placeholder="{$lang.modal.hostnameDescription}">
                    </div>
                </div>
                <br />
                <div class="center">
                    <button class="btn btn-success" type="submit" name="mg-action" value="mgChangeHostname">{$lang.modal.button.change}</button>
                    <button class="btn btn-warning cancel2" type="button" >{$lang.modal.button.cancel}</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div id="popupcontainer-boot-order">
    <div id="popuphtml" class="autoheight">
        <div class="form-container" id="mgChangeBootOrder" style="display: none;">
            <form method="post" action="clientarea.php?action=productdetails&id={$productId}" class="form-horizontal" style="padding: 0px 10px 0px 10px;">
                <h2 class="center" style="margin-bottom: 15px; font-size: 24px;">{$lang.modal.changeBootDevice}</h2>
                <div class="control-group">
                    <div class="controls">
                        <label class="control-label" for="hostname">{$lang.modal.bootDevice}</label>&nbsp;
                        <select name="bootDevice">
                            {foreach from=$bootableDevices item=device}
                                <option value="{$device.type}{$device.index}">{$lang[$device.type]} {$device.index}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                <br />
                <div class="center">
                    <button class="btn btn-success" type="submit" name="mg-action" value="mgChangeBootDevice">{$lang.modal.button.change}</button>
                    <button class="btn btn-warning cancel2" type="button" >{$lang.modal.button.cancel}</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div{if $baseTemplate neq 'default'} id="mg-wrapper"{/if}>
    <div class="pva">
        <form method="post" action="clientarea.php?action=productdetails&id={$productId}" id="pcsClientArea" >
            <input type="hidden" name="id" value="{$productId}" />

                <div class="alert alert-status alert-{if $error}error{else}success{/if} {if !$success && !$error}hidden{/if}">
                    <button class="close" data-dismiss="alert" type="button">×</button>
                    <p>
                        {if $error}
                            {$error} 
                        {else}
                            {$success}
                        {/if}
                    </p>
                </div>

            <div class="alert alert-block alert-error fade in reinstallAlert jshidden">
                <h4 class="alert-heading">{$lang.reinstallSure}</h4>
                {$lang.reinstallDetails}
                <p>
                    <button type="submit" name="reinstall" value="reinstall" class="btn btn-danger reinstall" >{$lang.reinstall}</button>
                    <button type="button" class="btn btn-inverse cancel" >{$lang.lblCancel}</button>
                </p>
            </div>

            {if $hostname }
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td>{$lang.servertype}</td>
                            <td>{if $container}{$lang.container}{else}{$lang.virtual}{/if}</td>
                        </tr>
                        <tr>
                            <td>{$lang.hostname}</td>
                            <td>{$hostname} <span class="mgChangeHostnameContainer" {if $status != 3}title="{$lang.stopToChangeHostname}"{/if} style="margin-top: 10px; margin-left: 5px;"><a class="btn btn-xs btn-link mgChangeHostname" {if $status != 3}disabled{/if}><i class="glyphicon glyphicon-edit"></i></a></span></td>
                        </tr>
                        <tr>
                            <td>{$lang.platform}</td>
                            <td>{$platform}</td>
                        </tr>
                        {if $ospackage}
                            <tr>
                                <td>{$lang.ospackage}</td>
                                <td>{$ospackage}</td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.statusLbl}</td>
                            <td id="pvaStatus"><strong class="statusInfo status-{$status}">{$lang.status[$status]}</strong><i class="icon-refresh reload"></i> <img src="modules/servers/virtuozzoVPS/images/ajax-loader.gif" class="loading hide" /></td>
                        </tr>
                        <tr>
                            <td>{$lang.ip}</td>
                            <td>{foreach from=$ipList item=ip}{$ip.ip}<br>{/foreach}</td>
                        </tr>
                        {if $guestToolsStatus}
                            <tr>
                                <td>{$lang.guestTools}</td>
                                <td>{$guestToolsStatus}</td>
                            </tr>
                        {/if}
                        <tr>
                            <td>{$lang.bootDevice}</td>
                            <td>{$lang[$bootDevice.type]} {$bootDevice.index}
                                <span class="mgChangeBootOrder" style="margin-top: 10px; margin-left: 5px;"><a class="btn btn-xs btn-link mgChangeBootOrder"><i class="glyphicon glyphicon-edit"></i></a></span></td>
                        </tr>
                        <tr>
                            <td>{$lang.ip}</td>
                            <td>{foreach from=$ipList item=ip}{$ip.ip}<br>{/foreach}</td>
                        </tr>
                        {if $cpuunits}
                            <tr>
                                <td>{$lang.cpuunits}</td>
                                <td>{$cpuunits}</td>
                            </tr>
                        {/if}
                        {if $cpulimit_mhz}
                            <tr>
                                <td>{$lang.cpulimit}</td>
                                <td>{if $cpulimit_mhz neq ''}{$cpulimit_mhz} MHz{else}No limit{/if}</td>
                            </tr>
                        {/if}
			{if $memory.value != 0.00}
                            <tr>
                                <td>{$lang.memory}</td>
                                <td>{$memory.value} {$memory.unit}</td>
                            </tr>
			{/if}
			{if $hddSize.value != 0.00}
                            <tr>
                                <td>{$lang.hddSize}</td>
                                <td>{$hddSize.value} {$hddSize.unit}</td>
                            </tr>
			{/if}
                        {if $function.displayPassword == 'true'}
                            <tr>
                                <td>{$lang.username}</td>
                                <td>{$username}</td>
                            </tr>
                            <tr>
                                <td>{$lang.password}</td>
                                <td><span class="hiddenPass">{$lang.passwordHidden}</span><strong style="display:none">{$password}</strong></td>
                            </tr>

                        {/if}
                        {if $function.sshKeyManagement == 'true'}
                            <tr>
                                <td>{$lang.sshKeyManagement}</td>
                                <td><a class="btn btn-info btn-sm addSshKey">{$lang.addSshKey}</a>
                                    <a class="btn btn-info btn-sm" href="clientarea.php?action=productdetails&id={$productId}&mg-action=downloadSshKey" target="_blank">{$lang.downloadSshKey}</a></td>
                            </tr>
                        {/if}
                    </tbody>
                </table>
                <div class="btn-toolbar">
                    {if $function.suspend == 'true'}
                        <button class="btn btn-warning {if $status != 6}hidden{/if}" type="submit" value="suspend" name="setStatus"><i class="icon-pause" style="height: 12px"></i> {$lang.suspend}</button>
                    {/if}
                    {if $function.stop == 'true'}
                        <button class="btn btn-danger {if $status != 6}hidden{/if}" type="submit" value="stop" name="setStatus"><i class="icon-stop" style="height: 12px"></i> {$lang.stop}</button>
                    {/if}
                    {if $function.start == 'true'}
                        <button class="btn btn-success  {if $status != 3}hidden{/if}" type="submit" value="start" name="setStatus"><i class="icon-off" style="height: 12px"></i> {$lang.start}</button>
                    {/if}
                    {if $function.restart == 'true'}
                        <button class="btn btn-info {if $status != 6 && $status != 4}hidden{/if}" type="submit" value="restart" name="setStatus"><i class="icon-refresh" style="height: 12px"></i> {$lang.restart}</button>
                    {/if}
                    {if $function.resume == 'true'}
                        <button class="btn btn-primary {if $status != 5}hidden{/if}" type="submit" value="resume" name="setStatus"><i class="icon-play" style="height: 12px"></i> {$lang.resume}</button>
                    {/if}
                    {if $function.reinstall == 'true'}
                        <p class="tooltipBTN" title="{$lang.stopToReinstall}">
                            <button class="btn btn-inverse reinstall" {if $status != 3}disabled{/if} type="button" value="reinstall" name="setStatus" ><i class="icon-repeat" style="height: 12px"></i> {$lang.reinstall}</button>
                        </p>
                    {/if}
                     <div class="clearfix"></div>
                    {foreach from=$funcPages key=func item=name}
                            <a class="btn" href="clientarea.php?action=productdetails&id={$productId}&modop=custom&a={$func}"><i class="{$name.ico}"></i> {$name.name}</a>
                    {/foreach}
                </div>
            {/if}
            
            <h2>{$lang.scheduled_tasks}</h2>
            <p class="muted">{$lang.sheduled_desc}</p>
            <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>{$lang.action}</th>
                            <th>{$lang.created_at}</th>
                            <th>{$lang.updated_at}</th>
                            <th width="20">{$lang.attempt}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$tasks item=task}
                            <tr{if $task.warning > 0} style="color: #f00; font-weight: bold;"{/if}>
                                <td>{$lang.tasks[$task.action]}</td>
                                <td>{$task.created|date_format}</td>
                                <td>{if $task.lastupdate|strtotime gt 0}{$task.lastupdate|date_format}{else}<span class="muted">{$lang.noperformed}</span>{/if}</td>
                                <td><span class="label {if $task.attempt > 0}label-danger{else}label-success{/if}">{$task.attempt}</span></td>
                            </tr>
                        {foreachelse}
                            <tr>
                                <td colspan="4" style="text-align:center;"><strong>{$lang.noaction}</strong></td>
                            </tr>
                        {/foreach}
                    </tbody>
            </table>
            
            {literal}
                <script type="text/javascript">
                    var statusBtn = new Array();
                    statusBtn[3] = new Array('start','reinstall');
                    statusBtn[4] = new Array('restart');
                    statusBtn[5] = new Array('resume');
                    statusBtn[6] = new Array('suspend','stop','restart');

                    jQuery(document).ready(function(){
                        
                        jQuery('.pva .tooltipBTN').tooltip();

                        jQuery('.btn-toolbar button,#pvaStatus .icon-refresh').not('.reinstall').click(function(){
                                jQuery('#pvaStatus').find('img').removeClass('hide');
                                jQuery('#pvaStatus').find('.icon-refresh').addClass('hide');
                                jQuery('.btn-toolbar button').attr('disabled','disabled');
                                jQuery.post('clientarea.php?action=productdetails&id={/literal}{$productId}{literal}',{setStatus: jQuery(this).val()},function(jdata){
                                    var data = jQuery.parseJSON(jdata);
                                    var alert = jQuery('.pva .alert-status');  
                                    if(data.success)
                                    {
                                          alert.removeClass('alert-error');
                                          alert.addClass('alert-success');
                                          alert.find('p').text(data.success);
                                          alert.removeClass('hidden');
                                    }
                                    if(data.error)
                                    {    
                                          alert.addClass('alert-error');
                                          alert.removeClass('alert-success');
                                          alert.find('p').text(data.error);
                                          alert.removeClass('hidden');
                                    }   
                                    var status = jQuery('#pvaStatus').find('.statusInfo');
                                    status.removeAttr('class').addClass('statusInfo').addClass('status-'+data.statusID);
                                    status.text(data.status);      
                                    jQuery('#pvaStatus').find('img').addClass('hide');
                                    jQuery('#pvaStatus').find('.icon-refresh').removeClass('hide');
                                    jQuery('.btn-toolbar button').each(function(){
                                       jQuery(this).not('.reinstall').addClass('hidden');

                                       for(x in statusBtn[data.statusID])
                                       {
                                           if(statusBtn[data.statusID][x] == jQuery(this).val())
                                           {
                                               jQuery(this).removeClass('hidden');
                                               jQuery(this).removeAttr('disabled');
                                           }
                                       }
                                    });
                                });
                                return false;
                        });

                        function processAutoheight()
                        {
                            var maxHeight = 0;

                            console.log(maxHeight);
                            // This will check first level children ONLY as intended.
                            $(".autoheight > *").each(function(){

                                height = $(this).outerHeight(true); // outerHeight will add padding and margin to height total
                                if (height > maxHeight ) {
                                    maxHeight = height;
                                }
                            });

                            $(".autoheight").height(maxHeight);
                        }

                        jQuery(".addSshKey").on('click', function() {

                            jQuery('#greyout').fadeIn();
                            jQuery('#popupcontainer').slideDown();
                            jQuery('#popupcontainer').find('#mgAddSshKey').show();
                            jQuery('#popupcontainer2').find('#mgChangeHostname').hide();
                            processAutoheight();

                        });


                        jQuery(".mgChangeHostname").on('click', function() {
                            if($(this).attr('disabled') !== undefined || $(this).attr('disabled') == "disabled"){
                                return;
                            }
                            else {
                                jQuery('#greyout').fadeIn();
                                jQuery('#popupcontainer2').slideDown();
                                jQuery('#popupcontainer2').find('#mgChangeHostname').show();
                                jQuery('#popupcontainer').find('#mgAddSshKey').hide();
                                processAutoheight();

                            }

                        });

                        jQuery('.mgChangeBootOrder').on('click', function(){
                            jQuery('#greyout').fadeIn();
                            jQuery('#popupcontainer-boot-order').slideDown();
                            jQuery('#popupcontainer-boot-order').find('#mgChangeBootOrder').show();
                            processAutoheight();
                        });

                        jQuery(".cancel2").on('click', function() {
                            jQuery('#popupcontainer2').css('display', 'none');
                            jQuery('#popupcontainer-boot-order').css('display', 'none');
                            jQuery('#greyout').fadeOut();
                        });

                        $(window).resize(function() { processAutoheight(); });


                    });
                </script>
            {/literal}
        </form>
    </div>
</div>