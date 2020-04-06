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
<script type="text/javascript" src="modules/servers/virtuozzoVPS/jquery-ui-1.10.3.custom.min.js" ></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        var buttonDisable = false;
        jQuery('.enableConsole').click(function() {
            var that = $(this);

            jQuery('#greyout').fadeIn();
            jQuery('#popupcontainer').slideDown();


            var contentb = jQuery('#enableConsole').clone(true);

            contentb.find('.hideitjs, .alert-success').hide();

            contentb.find('.enableConsole').removeClass('hidden');

            jQuery('#popuphtml').html(contentb);
        });

        jQuery('.disableConsole').click(function() {
            var that = $(this);

            jQuery('#greyout').fadeIn();
            jQuery('#popupcontainer').slideDown();


            var contentb = jQuery('#disableConsole').clone(true);

            contentb.find('.hideitjs, .alert-success').hide();

            contentb.find('.disableConsole').removeClass('hidden');

            jQuery('#popuphtml').html(contentb);
        });

        jQuery('.consoleCancel').click(function() {
            jQuery('#backupList .form-container').hide();
            jQuery('.createBackupBtn').show();
        });

        jQuery('.enableConsoleButton').click(function() {;
            if(buttonDisable)
            {
                return;
            }
            else {
                buttonDisable = true;
                jQuery('.loadingAction').removeClass('hidden');
                jQuery.post(window.location, {
                    'changeConsole': true,
                    'command': 'enable_console'
                }, function (data) {
                    try {
                        buttonDisable = false;
                        jQuery('.loadingAction').addClass('hidden');
                        var jsonData = JSON.parse(data);
                        if (jsonData.status == "success") {
                            jQuery('#greyout').fadeOut();
                            jQuery('.enableConsole').addClass('hidden');
                            jQuery('#popuphtml').remove();
                            if(jsonData.message !== undefined && jsonData.message.error !== undefined)
                            {
                                PCSshowError(jsonData.message.error);
                            }
                            else
                            {
                                jQuery('.mainAlert').addClass('hidden');
                                PCSshowSuccess(jsonData.message);
                                setTimeout(function () {
                                    location.reload();
                                }, 5000);
                            }

                        } else if (jsonData.message !== undefined) {
                            PCSshowError(jsonData.message);
                        } else {
                            PCSshowError('Something goes wrong. Please try again...');
                        }
                    } catch (e) {
                        jQuery('.loadingAction').addClass('hidden');
                        buttonDisable = false;
                        console.log('error', e)
                    }

                }).fail(function (error) {
                    PCSshowError(error);
                })
            }
        });

        jQuery('.disableConsoleButton').click(function() {;
            if(buttonDisable)
            {
                return;
            }
            else
            {
                buttonDisable = true;
                jQuery('.loadingAction').removeClass('hidden');
                jQuery.post(window.location, {
                    'changeConsole': true,
                    'command': 'disable_console'
                }, function (data) {
                    try {
                        buttonDisable = false;
                        jQuery('.loadingAction').addClass('hidden');
                        var jsonData = JSON.parse(data);

                        if (jsonData.status == "success") {
                            jQuery('#greyout').fadeOut();
                            jQuery('.disableConsole').addClass('hidden');
                            jQuery('#popuphtml').remove();
                            PCSshowSuccess(jsonData.message);
                            location.reload();
                        } else if (jsonData.message !== undefined) {
                            PCSshowError(jsonData.message);
                        } else {
                            PCSshowError('Something goes wrong. Please try again...');
                        }
                    } catch (e) {
                        buttonDisable = false;
                        jQuery('.loadingAction').addClass('hidden');
                        console.log('error', e)
                    }

                }).fail(function (error) {
                    PCSshowError(error);
                })
            }
        });


        function PCSshowError(data)
        {
            jQuery('.consoleAlertSuccess').addClass('hidden')
            jQuery('.consoleAlertDanger').removeClass('hidden')
            jQuery('.consoleAlertDanger span').html(data)
        }

        function PCSshowSuccess(data)
        {
            jQuery('.consoleAlertDanger').addClass('hidden')
            jQuery('.consoleAlertSuccess').removeClass('hidden')
            jQuery('.consoleAlertSuccess span').html(data)
        }
    });
</script>
<div id="greyout"></div>
<div id="popupcontainer">
    <div id="popuphtml"></div>
</div>
{/literal}

<div id="enableConsole">
    <div class="row enableConsole hidden">
        <div class="col-md-12 text-center">
                <h2>{$lang.enableConsoleTitle}</h2>
                <p>{$lang.enableConsoleAlert}</p>
                <p>
                    <img src="modules/servers/virtuozzoVPS/images/ajax-loader.gif" class="loadingAction hidden" />
                </p>
                <div class="center">
                    <button class="btn btn-success enableConsoleButton">{$lang.enableConsole}</button>
                    <button class="btn btn-warning consoleCancel cancel" >{$lang.lblCancel}</button>
                </div>
                </div>
        </div>
    </div>
</div>
<div id="disableConsole">
    <div class="row disableConsole hidden">
        <div class="col-md-12 text-center">
                <h2>{$lang.disableConsoleTitle}</h2>
                <p>{$lang.disableConsoleAlert}</p>
                <p>
                    <img src="modules/servers/virtuozzoVPS/images/ajax-loader.gif" class="loadingAction hidden" />
                </p>
                <div class="center">
                    <button class="btn btn-danger disableConsoleButton">{$lang.disableConsole}</button>
                    <button class="btn btn-warning consoleCancel cancel" >{$lang.lblCancel}</button>
                </div>
                </div>
        </div>
    </div>
</div>

<div class="spacer"></div>

<h2 class="pull-left" style="font-size: 24px;">{$lang.consoleTitle}<a href="clientarea.php?action=productdetails&id={$productId}&modop=custom&a=console"><i class="icon-refresh iconBack" style="float: bottom!important;"></i></a></h2>
<button class="btn btn-danger pull-right disableConsole {if !$consoleEnable}hidden{/if}">{$lang.disableConsole}</button>
<button class="btn btn-success pull-right enableConsole {if $consoleEnable}hidden{/if}">{$lang.enableConsole}</button>

<div class="clearfix"></div>

<div class="row" style="padding-top: 10px; padding-bottom: 10px;">
    <div class="col-md-12">
        <div class="alert alert-danger alert-dismissible consoleAlertDanger hidden">
            <span></span>
        </div>
        <div class="alert alert-success consoleAlertSuccess hidden">
            <span></span>
        </div>
    </div>
</div>





{if $ipaddress && $consoleEnable}

    <!-- Icons (see Makefile for what the sizes are for) -->
    <link rel="icon" sizes="16x16" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-16x16.png">
    <link rel="icon" sizes="24x24" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-24x24.png">
    <link rel="icon" sizes="32x32" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-32x32.png">
    <link rel="icon" sizes="48x48" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-48x48.png">
    <link rel="icon" sizes="60x60" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-60x60.png">
    <link rel="icon" sizes="64x64" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-64x64.png">
    <link rel="icon" sizes="72x72" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-72x72.png">
    <link rel="icon" sizes="76x76" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-76x76.png">
    <link rel="icon" sizes="96x96" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-96x96.png">
    <link rel="icon" sizes="120x120" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-120x120.png">
    <link rel="icon" sizes="144x144" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-144x144.png">
    <link rel="icon" sizes="152x152" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-152x152.png">
    <link rel="icon" sizes="192x192" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-192x192.png">
    <!-- Firefox currently mishandles SVG, see #1419039
    <link rel="icon" sizes="any" type="image/svg+xml" href="app/images/icons/novnc-icon.svg">
    -->
    <!-- Repeated last so that legacy handling will pick this -->
    <link rel="icon" sizes="16x16" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-16x16.png">

    <!-- Apple iOS Safari settings -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <!-- Home Screen Icons (favourites and bookmarks use the normal icons) -->
    <link rel="apple-touch-icon" sizes="60x60" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-60x60.png">
    <link rel="apple-touch-icon" sizes="76x76" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-76x76.png">
    <link rel="apple-touch-icon" sizes="120x120" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-120x120.png">
    <link rel="apple-touch-icon" sizes="152x152" type="image/png" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/images/icons/novnc-152x152.png">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="modules/servers/virtuozzoVPS/vendor/noVNC/app/styles/lite.css">

     <!--
    <script type='text/javascript'
        src='http://getfirebug.com/releases/lite/1.2/firebug-lite-compressed.js'></script>
    -->

    <!-- promise polyfills promises for IE11 -->
    <script src="modules/servers/virtuozzoVPS/vendor/noVNC/vendor/promise.js"></script>
    <!-- ES2015/ES6 modules polyfill -->
    <script type="module">
        window._noVNC_has_module_support = true;
    </script>
    <script>
        window.addEventListener("load", function() {
            if (window._noVNC_has_module_support) return;
            var loader = document.createElement("script");
            loader.src = "modules/servers/virtuozzoVPS/vendor/noVNC/vendor/browser-es-module-loader/dist/browser-es-module-loader.js";
            document.head.appendChild(loader);
        });
    </script>

    <!-- actual script modules -->
    <script type="module" crossorigin="anonymous">
        // Load supporting scripts
        import * as WebUtil from './modules/servers/virtuozzoVPS/vendor/noVNC/app/webutil.js';
        import RFB from './modules/servers/virtuozzoVPS/vendor/noVNC/core/rfb.js';

        var rfb;
        var desktopName;

        function updateDesktopName(e) {
            desktopName = e.detail.name;
        }
        function credentials(e) {
            var html;

            var form = document.createElement('form');
            form.innerHTML = '<label></label>';
            form.innerHTML += '<input type=password size=10 id="password_input">';
            form.onsubmit = setPassword;

            // bypass status() because it sets text content
            document.getElementsByName('noVNC_status_bar').forEach( 
               function(currentValue) { 
                   currentValue.setAttribute("class", "noVNC_status_warn");
            });            
            document.getElementById('noVNC_status').innerHTML = '';
            document.getElementById('noVNC_status').appendChild(form);
            document.getElementById('noVNC_status').querySelector('label').textContent = 'Password Required: ';
        }
        function setPassword() {
            rfb.sendCredentials({ password: document.getElementById('password_input').value });
            return false;
        }
        function sendCtrlAltDel() {
            rfb.sendCtrlAltDel();
            return false;
        }
        function machineShutdown() {
            rfb.machineShutdown();
            return false;
        }
        function machineReboot() {
            rfb.machineReboot();
            return false;
        }
        function machineReset() {
            rfb.machineReset();
            return false;
        }
        function status(text, level) {
            switch (level) {
                case 'normal':
                case 'warn':
                case 'error':
                    break;
                default:
                    level = "warn";
            }

            document.getElementsByName('noVNC_status_bar').forEach( 
               function(currentValue) { 
                   currentValue.className = "noVNC_status_" + level;
            });
            document.getElementById('noVNC_status').textContent = text;
        }

        function connected(e) {
            document.getElementById('sendCtrlAltDelButton').disabled = false;
            if (WebUtil.getConfigVar('encrypt',
                                     (window.location.protocol === "https:"))) {
                status("Connected (encrypted) to " + desktopName, "normal");
            } else {
                status("Connected (unencrypted) to " + desktopName, "normal");
            }
        }

        function disconnected(e) {
            document.getElementById('sendCtrlAltDelButton').disabled = true;
            updatePowerButtons();
            if (e.detail.clean) {
                status("Disconnected", "normal");
            } else {
                status("Something went wrong, connection is closed", "error");
            }
        }

        function updatePowerButtons() {
            var powerbuttons;
            powerbuttons = document.getElementById('noVNC_power_buttons');
            if (rfb.capabilities.power) {
                powerbuttons.className= "noVNC_shown";
            } else {
                powerbuttons.className = "noVNC_hidden";
            }
        }

        document.getElementById('sendCtrlAltDelButton').onclick = sendCtrlAltDel;
        document.getElementById('machineShutdownButton').onclick = machineShutdown;
        document.getElementById('machineRebootButton').onclick = machineReboot;
        document.getElementById('machineResetButton').onclick = machineReset;

        WebUtil.init_logging(WebUtil.getConfigVar('logging', 'warn'));
        document.title = WebUtil.getConfigVar('title', 'noVNC');
        // By default, use the host and port of server that served this file
        var host = WebUtil.getConfigVar('host', '{if $consoleHost}{$consoleHost}{else}{$ipaddress}{/if}');
        var port = WebUtil.getConfigVar('port', '{$port}');

        // if port == 80 (or 443) then it won't be present and should be
        // set manually
        if (!port) {
            if (window.location.protocol.substring(0,5) == 'https') {
                port = 443;
            }
            else if (window.location.protocol.substring(0,4) == 'http') {
                port = 80;
            }
        }

        var password = WebUtil.getConfigVar('password', '{$consolePassword}');
        var path = WebUtil.getConfigVar('path', '');

        // If a token variable is passed in, set the parameter in a cookie.
        // This is used by nova-novncproxy.
        var token = WebUtil.getConfigVar('token', null);
        if (token) {
            // if token is already present in the path we should use it
            path = WebUtil.injectParamIfMissing(path, "token", token);

            WebUtil.createCookie('token', token, 1)
        }

        (function() {

            reconnect();
        })();

        function reconnect()
        {
            status("Connecting", "normal");

            if ((!host) || (!port)) {
                status('Must specify host and port in URL', 'error');
            }

            var url;

            if (WebUtil.getConfigVar('encrypt',
                (window.location.protocol === "https:"))) {
                url = 'wss';
            } else {
                url = 'ws';
            }

            url += '://' + host;
            if(port) {
                url += ':' + port;
            }
            url += '/' + path;

            rfb = new RFB(document.getElementById('noVNCConsolePlacecholder'), url,
                { repeaterID: WebUtil.getConfigVar('repeaterID', ''),
                    shared: WebUtil.getConfigVar('shared', true),
                    credentials: { password: password } });
            rfb.viewOnly = WebUtil.getConfigVar('view_only', false);
            rfb.addEventListener("connect",  connected);
            rfb.addEventListener("disconnect", disconnected);
            rfb.addEventListener("capabilities", function () { updatePowerButtons(); });
            rfb.addEventListener("credentialsrequired", credentials);
            rfb.addEventListener("desktopname", updateDesktopName);
            rfb.scaleViewport = WebUtil.getConfigVar('scale', false);
            rfb.resizeSession = WebUtil.getConfigVar('resize', false);
        }
    </script>    
    
    <div class="row">
        {if $successAlert}
            <div class="col-md-12">
                <div class="alert alert-success">
                    <button class="close caclose" data-dismiss="alert" type="button" >×</button>
                    <span>{$successAlert}</span>
                </div>
            </div>
        {/if}
        <div class="col-md-12 mg-vnc-wrapper">
            <div name="noVNC_status_bar" class="noVNC_status_bar_top">
                <div id="noVNC_status">Loading</div>
            </div>
            <div id="noVNCConsolePlacecholder">
      
            </div>
            <div id="noVNC_status_bar" name="noVNC_status_bar" {if !$isVm} style="display: none!important" {/if}>
                <div id="noVNC_left_dummy_elem"></div>
                <div id="noVNC_buttons">
                    <input type=button value="Send Ctrl+Alt+Del"id="sendCtrlAltDelButton" class="noVNC_shown btn btn-danger no-vnc-btn" style="margin-right: 4px;">
                    <span id="noVNC_power_buttons" class="noVNC_hidden">
                        <input type=button value="Shutdown" class="btn btn-danger no-vnc-btn"
                               id="machineShutdownButton">
                        <input type=button value="Reboot" class="btn btn-danger no-vnc-btn"
                               id="machineRebootButton">
                        <input type=button value="Reset" class="btn btn-danger no-vnc-btn"
                               id="machineResetButton">
                    </span>
                </div>
            </div>
        </div>
    </div> 
    
{else}
    <div class="alert alert-danger mainAlert">
        <p>
            {$error}
        </p>
    </div>
{/if}

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
    h2 {
        font-weight: 500;
    }
</style>