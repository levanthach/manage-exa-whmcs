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
            action('firewallList', 'deleteRule');
            action('firewallList', 'edit');
            jQuery('#createRuleBtn').click(function() {
                jQuery('#firewallList .form-container').show(function() {
                    jQuery('#createRuleBtn').hide();
                });
            });
            jQuery('#createRuleCancel').click(function() {
                jQuery('#firewallList .form-container').hide(function() {
                    jQuery('#createRuleBtn').show();
                });
            });
            jQuery('#editRuleCancel').click(function() {
                document.location = document.location;
            })
        });
    </script>
{/literal}

<form method="post" action="" class="form-horizontal" id="firewallList">
    <input type="hidden" name="itemid" value="{$edit.id}" class="id" />
    <input type="hidden" name="go" value="" class="actionInput" />

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

    {if !$error}
        <div class="pull-left">
            <h2 style="margin-right: 10px;float:left;">
                {$lang.firewallStatus}
                {if $status == 1}
                    <span style="color:#468847">{$lang.status.1}</span> 
                {else}
                    <span style="color:#B94A48">{$lang.status.0}</span> 
                {/if}
            </h2>
            {if $status == 1}
                <button type="submit" class="btn btn-danger btn-small caButtonTitle" name="go" value="disable" >{$lang.turnoff}</button> 
            {else}
                <button type="submit" class="btn btn-success btn-small caButtonTitle" name="go" value="enable" >{$lang.turnon}</button> 
            {/if}
        </div>

        <div class="clearfix"></div>
        <div class="spacer"></div>


        <div class="form-container" {if !$edit}style="display:none"{/if}>        

            {if $edit}
                <h2>{$lang.editLbl} {$edit.name}</h2>
            {else}
                <h2>{$lang.createLbl}</h2>
            {/if}

            <div class="spacer"></div>

            {if !$edit}
                <div class="control-group">
                    <label class="control-label" for="name">{$lang.lblDesc}</label>
                    <div class="controls">
                        <input type="text" name="name" id="name" placeholder="{$lang.lblDesc}">
                    </div>
                </div>
            {/if}

            <div class="control-group">
                <label class="control-label" for="chain">{$lang.chainLbl}</label>
                <div class="controls">
                    <select name="chain" id="chain">
                        {foreach from=$lang.chain key=key item=item}
                            <option {if $key == $edit.chain}selected="selected"{/if} value="{$key}">{$item}</option>
                        {/foreach}
                    </select>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="policy">{$lang.lblPolicy}</label>
                <div class="controls">
                    <select name="policy" id="policy">
                        {foreach from=$lang.policy key=key item=item}
                            <option {if $key == $edit.policy}selected="selected"{/if} value="{$key}">{$item}</option>
                        {/foreach}
                    </select>
                </div>
            </div> 

            <div class="control-group">
                <label class="control-label" for="protocol">{$lang.lblProtocol}</label>
                <div class="controls">
                    <select name="protocol" id="protocol">
                        {foreach from=$lang.protocol key=key item=item}
                            <option {if $key == $edit.protocol}selected="selected"{/if} value="{$key}">{$item}</option>
                        {/foreach}
                    </select>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="source">{$lang.lblSrc}</label>
                <div class="controls">
                    <input type="text" name="source" id="source" {if $edit.src.host} value="{$edit.src.host}" {else} value="*" placeholder="*" {/if}>/
                    <input type="text" name="sourceMask" {if $edit.src.mask} value="{$edit.src.mask}" {else} value="*" placeholder="*" {/if}>
                    <span class="help-block">{$lang.lblSrcDstHelp}</span>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="dst">{$lang.lblDst}</label>
                <div class="controls">
                    <input type="text" name="dst" id="dst"  {if $edit.dst.host} value="{$edit.dst.host}" {else} value="*" placeholder="*" {/if}>/
                    <input type="text" name="dstMask" {if $edit.dst.mask} value="{$edit.dst.mask}" {else} value="*" placeholder="*" {/if}>
                    <span class="help-block">{$lang.lblSrcDstHelp}</span>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="sourcePort">{$lang.lblSrcPort}</label>
                <div class="controls">
                    <input type="text" name="sourcePort" id="sourcePort" {if $edit.srcStart} value="{$edit.srcStart}{if $item.srcEnd&$item.srcEnd!=0}-{$item.srcEnd}{/if}" {/if}/>
                    <span class="help-block">{$lang.lblSrcDstPortHelp}</span>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="dstPort">{$lang.lblDstPort}</label>
                <div class="controls">
                    <input type="text" name="dstPort" id="dstPort" {if $edit.dstStart} value="{$edit.dstStart}{if $item.dstEnd&$item.dstEnd!=0}-{$item.dstEnd}{/if}" {/if}/>
                    <span class="help-block">{$lang.lblSrcDstPortHelp}</span>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" name="enable" id="enable" value="on" {if $edit.enable} checked="checked"{/if}>{$lang.active}
                    </label>
                </div>
            </div>
            <div class="center">       
                {if $edit}
                    <button class="btn btn-success" type="submit" name="go" value="saveEdit">{$lang.saveLbl}</button>
                {else}
                    <button class="btn btn-success" type="submit" name="go" value="create">{$lang.createLbl}</button>
                {/if}

                {if $edit}
                    <button id="editRuleCancel" type="button" class="btn btn-warning btn-inverse" >{$lang.lblCancel}</button>
                {else}
                    <button id="createRuleCancel" type="button" class="btn btn-warning btn-inverse" >{$lang.lblCancel}</button>
                {/if}   
            </div>
        </div>
        <button id="createRuleBtn" class="btn btn-success pull-right" type="button">{$lang.createLbl}</button>
        <div class="spacer"></div>
        <div class="clearfix"></div>
    {/if}

    <div class="alert alert-block alert-error fade in deleteRuleAlert jshidden">
        <h4 class="alert-heading">{$lang.deleteSure} <span class="name"></span>{$lang.deleteRule}</h4>
        <p>
            <button type="submit" name="go" value="remove" class="btn btn-danger caButtonTitle" >{$lang.lblRemove}</button>
            <button type="button" class="btn btn-warning btn-inverse cancel caButtonTitle" >{$lang.lblCancel}</button>
        </p>
    </div>
    
    <div class="clearfix"></div>
    <div class="spacer"></div>

        <h2>{$lang.lists.INPUT}</h2>      

        <table class="table" >
            <thead>
                <tr>
                    <td>{$lang.lblDesc}</td>
                    <td>{$lang.lblPolicy}</td>
                    <td>{$lang.lblProtocol}</td>
                    <td>{$lang.lblSrc}</td>
                    <td>{$lang.lblDst}</td>
                    <td>{$lang.lblSrcPort}</td>
                    <td>{$lang.lblDstPort}</td>
                    <td>{$lang.lblEnable}</td>
                    <td>{$lang.lblEdit}</td>
                    <td>{$lang.lblRemove}</td>
                </tr>
            </thead>
            <tbody>
                {if $list.INPUT|@count >0}
                    {foreach from=$list.INPUT item=item key=key}
                        <tr>
                            <td>{$item.name}</td>
                            <td>{$lang.policy[$item.policy]}</td>
                            <td>{$lang.protocol[$item.protocol]}</td>
                            <td>{if $item.src.host}{$item.src.host}{if $item.src.mask}/{$item.src.mask}{/if}{else}*{/if}</td>
                            <td>{if $item.dst.host}{$item.dst.host}{if $item.dst.mask}/{$item.dst.mask}{/if}{else}*{/if}</td>
                            <td>{$item.srcStart}{if $item.srcEnd} - {$item.srcEnd}{/if}</td>
                            <td>{$item.dstStart}{if $item.dstEnd} - {$item.dstEnd}{/if}</td>
                            <td>{$lang.status[$item.enable]}</td>
                            <td><i data-name="{$item.name}" data-id="{$key}" class="edit icon-edit"></i></td>
                            <td><i data-name="{$item.name}" data-id="{$key}" class="deleteRule icon-remove"></i></td>
                        </tr>
                    {/foreach}
                {else}
                    <tr>
                        <td colspan="10" style="text-align:center;"><strong>{$lang.noRules}</strong></td>
                    </tr>
                {/if}
            </tbody>
        </table> 

        <h2>{$lang.lists.OUTPUT}</h2>      

        <table class="table" >
            <thead>
                <tr>
                    <td>{$lang.lblDesc}</td>
                    <td>{$lang.lblPolicy}</td>
                    <td>{$lang.lblProtocol}</td>
                    <td>{$lang.lblSrc}</td>
                    <td>{$lang.lblDst}</td>
                    <td>{$lang.lblSrcPort}</td>
                    <td>{$lang.lblDstPort}</td>
                    <td>{$lang.lblEnable}</td>
                    <td>{$lang.lblEdit}</td>
                    <td>{$lang.lblRemove}</td>
                </tr>
            </thead>
            <tbody>
                {if $list.OUTPUT|@count >0}
                    {foreach from=$list.OUTPUT item=item key=key}
                        <tr>
                            <td>{$item.name}</td>
                            <td>{$lang.policy[$item.policy]}</td>
                            <td>{$lang.protocol[$item.protocol]}</td>
                            <td>{if $item.src.host}{$item.src.host}{if $item.src.mask}/{$item.src.mask}{/if}{else}*{/if}</td>
                            <td>{if $item.dst.host}{$item.dst.host}{if $item.dst.mask}/{$item.dst.mask}{/if}{else}*{/if}</td>
                            <td>{$item.srcStart}{if $item.srcEnd} - {$item.srcEnd}{/if}</td>
                            <td>{$item.dstStart}{if $item.dstEnd} - {$item.dstEnd}{/if}</td>
                            <td>{$lang.status[$item.enable]}</td>
                            <td><i data-name="{$item.name}" data-id="{$key}" class="edit icon-edit"></i></td>
                            <td><i data-name="{$item.name}" data-id="{$key}" class="deleteRule icon-remove"></i></td>
                        </tr>
                    {/foreach}
                {else}
                    <tr>
                        <td colspan="10" style="text-align:center;"><strong>{$lang.noRules}</strong></td>
                    </tr>
                {/if}
            </tbody>
        </table> 
            
        <h2>{$lang.lists.FORWARD}</h2>      

        <table class="table" >
            <thead>
                <tr>
                    <td>{$lang.lblDesc}</td>
                    <td>{$lang.lblPolicy}</td>
                    <td>{$lang.lblProtocol}</td>
                    <td>{$lang.lblSrc}</td>
                    <td>{$lang.lblDst}</td>
                    <td>{$lang.lblSrcPort}</td>
                    <td>{$lang.lblDstPort}</td>
                    <td>{$lang.lblEnable}</td>
                    <td>{$lang.lblEdit}</td>
                    <td>{$lang.lblRemove}</td>
                </tr>
            </thead>
            <tbody>
                {if $list.FORWARD|@count >0}
                    {foreach from=$list.FORWARD item=item key=key}
                        <tr>
                            <td>{$item.name}</td>
                            <td>{$lang.policy[$item.policy]}</td>
                            <td>{$lang.protocol[$item.protocol]}</td>
                            <td>{if $item.src.host}{$item.src.host}{if $item.src.mask}/{$item.src.mask}{/if}{else}*{/if}</td>
                            <td>{if $item.dst.host}{$item.dst.host}{if $item.dst.mask}/{$item.dst.mask}{/if}{else}*{/if}</td>
                            <td>{$item.srcStart}{if $item.srcEnd} - {$item.srcEnd}{/if}</td>
                            <td>{$item.dstStart}{if $item.dstEnd} - {$item.dstEnd}{/if}</td>
                            <td>{$lang.status[$item.enable]}</td>
                            <td><i data-name="{$item.name}" data-id="{$key}" class="edit icon-edit"></i></td>
                            <td><i data-name="{$item.name}" data-id="{$key}" class="deleteRule icon-remove"></i></td>
                        </tr>
                    {/foreach}
                {else}
                    <tr>
                        <td colspan="10" style="text-align:center;"><strong>{$lang.noRules}</strong></td>
                    </tr>
                {/if}
            </tbody>
        </table> 
            
</form>
<style type="text/css">
    .caButtonTitle {
        margin-top: 20px!important;
        margin-bottom: 10px!important;
    }
</style>