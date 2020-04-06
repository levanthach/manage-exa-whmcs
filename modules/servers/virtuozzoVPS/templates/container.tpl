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
{if $loadBootstrap}
    <link href="modules/servers/virtuozzoVPS/assets/css/bootstrap.css" rel="stylesheet">
{/if}
<link href="modules/servers/virtuozzoVPS/style.css" rel="stylesheet">
<script type="text/javascript" src="modules/servers/virtuozzoVPS/script.js" ></script>
{if $templateFileName !== 'clientArea'}
    <link href="modules/servers/virtuozzoVPS/assets/css/bootstrap3.css" rel="stylesheet">
{/if}
<div{if $loadBootstrap} id="mg-wrapper"{/if}>
    <div class="pva">
        <div class="clearfix"></div>
        {include file=$pagefile}
    </div>
</div>