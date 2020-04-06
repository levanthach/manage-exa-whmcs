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
<script type="text/javascript" src="modules/servers/virtuozzoVPS/yui-min.js" ></script>
<script type="text/javascript" src="modules/servers/virtuozzoVPS/jquery-ui-1.10.3.custom.min.js" ></script>
<link rel="stylesheet" type="text/css" href="modules/servers/virtuozzoVPS/yui.css" />
{literal}
    <script type="text/javascript">
        jQuery(document).ready(function() {

        function loadNet() {
                jQuery('#chart_net').html('<img src="modules/servers/virtuozzoVPS/assets/img/loading.gif" class="loading" />');
                jQuery.post(document.location, {go: 'getNet', from: jQuery(".net input[name='from']").val(), to: jQuery(".net input[name='to']").val()}, function(ret) {
                    var data = jQuery.parseJSON(ret);
                    jQuery('#chart_net img').remove();
                    jQuery('#chart_net').css('height', '400px');
                    
                    if(data['data'] == '') 
                    {
                        jQuery('#chart_net').html('<div class="alert alert-info">{/literal}{$lang.usageNoDataAvailable}{literal}</div>');
                        jQuery('#chart_net').css('height', '100px');                             
                        return;
                    }
                    
                    YUI().use('charts-legend', function(Y) {
                        var myTooltip = {
                            styles: {
                                backgroundColor: "#333",
                                color: "#eee",
                                borderColor: "#fff",
                                textAlign: "center"
                            },
                            markerLabelFunction: function(categoryItem, valueItem, itemIndex, series, seriesIndex)
                            {
                                var msg = document.createElement("div"),
                                        div1 = document.createElement("div"),
                                        div2 = document.createElement("div");
                                div3 = document.createElement("div");
                                div1.appendChild(document.createTextNode(categoryItem.axis.get("labelFunction").apply(this, [categoryItem.value, categoryItem.axis.get("labelFormat")])));
                                div2.appendChild(document.createTextNode(valueItem.axis.get("labelFunction").apply(this, [valueItem.value, {prefix: "", decimalPlaces: 2}]) + data['netUnit']));
                                div3.appendChild(document.createTextNode(valueItem.displayName));
                                msg.appendChild(div1);
                                msg.appendChild(div3);
                                msg.appendChild(div2);
                                return msg;
                            }
                        };
                        
                        var myAxes = {
                            percentage: {
                                type: "numeric",
                                position: "left",
                                keys: ["Upload", "Download"],
                                labelFormat: {suffix: data['netUnit']},
                            },
                        };

                        // Instantiate and render the chart
                        var mychart = new Y.Chart({
                            legend: {
                                position: "top",
                                width: 300,
                                height: 300,
                                styles: {
                                    hAlign: "center",
                                    hSpacing: 4
                                }
                            },
                            dataProvider: data['data'],
                            render: "#chart_net",
                            tooltip: myTooltip,
                            axes: myAxes,
                            styles: {
                                axes: {
                                    category: {
                                        label: {
                                            rotation: -60
                                        }
                                    }
                                }
                            },
                            legend: {
                                position: "top",
                                width: 300,
                                height: 300,
                                styles: {
                                    hAlign: "center",
                                    hSpacing: 4
                                }
                            },
                        });
                    });
                });
            }

            function loadMemCpu() {
                jQuery('#cpumem').html('<img src="modules/servers/virtuozzoVPS/assets/img/loading.gif" class="loading" />');
                jQuery.post(document.location, {go: 'getMemCpu', from: jQuery(".cpumem input[name='from']").val(), to: jQuery(".cpumem input[name='to']").val()}, function(ret) {
                    var data = jQuery.parseJSON(ret);
                    jQuery('#cpumem img').remove();
                    jQuery('#cpumem').css('height', '400px');
                    
                    if(data['data'] == '') 
                    {
                        jQuery('#cpumem').html('<div class="alert alert-info">{/literal}{$lang.usageNoDataAvailable}{literal}</div>');
                        jQuery('#cpumem').css('height', '100px');
                        return;
                    }
                    
                    YUI().use('charts-legend', function(Y)
                    {
                        //Define axes and assign keys
                        var myAxes = {
                            percentage: {
                                type: "numeric",
                                position: "right",
                                keys: ["cpu"],
                                labelFormat: {suffix: "%"},
                            },
                            sales: {
                                type: "numeric",
                                position: "left",
                                keys: ["mem"],
                                labelFormat: {suffix: " MB"},
                            }
                        };

                        //Define a series collection so that we can assign nice display names
                        var mySeries = [
                            {type: "combo", yKey: "mem", yDisplayName: "{/literal}{$lang.memUsage}{literal}", xDisplayName: "Date"},
                            {type: "combo", yKey: "cpu", yDisplayName: "{/literal}{$lang.cpuUsage}{literal}", xDisplayName: "Date"}
                        ];

                        var mychart = new Y.Chart({
                            legend: {
                                position: "top",
                                width: 300,
                                height: 300,
                                styles: {
                                    hAlign: "center",
                                    hSpacing: 4
                                }
                            },
                            dataProvider: data['data'],
                            categoryKey: "date",
                            axes: myAxes,
                            seriesCollection: mySeries,
                            render: "#cpumem",
                            styles: {
                                axes: {
                                    date: {
                                        label: {
                                            rotation: -60
                                        }
                                    }
                                }
                            }
                        });
                    });
                });

            }

            function loadQuota() {
                jQuery('#chart_disk').html('<img src="modules/servers/virtuozzoVPS/assets/img/loading.gif" class="loading" />');
                jQuery.post(document.location, {go: 'getQuota', from: jQuery(".disk input[name='from']").val(), to: jQuery(".disk input[name='to']").val()}, function(ret) {
                    var data = jQuery.parseJSON(ret);
                    jQuery('#chart_disk img').remove();
                    jQuery('#chart_disk').css('height', '400px');
                    
                    if(data['data'] == '') 
                    {
                        jQuery('#chart_disk').html('<div class="alert alert-info">{/literal}{$lang.usageNoDataAvailable}{literal}</div>');
                        jQuery('#chart_disk').css('height', '100px');                        
                        return;
                    }
                    
                    YUI().use('charts-legend', function(Y)
                    {
                        //Define axes and assign keys
                        var myAxes = {
                            percentage: {
                                type: "numeric",
                                position: "right",
                                keys: ["usage"],
                                labelFormat: {suffix: data['diskUnit']},
                            },
                            sales: {
                                type: "numeric",
                                position: "left",
                                keys: ["usageio"],
                                labelFormat: {suffix: data['diskUnitIO']},
                            }
                        };

                        //Define a series collection so that we can assign nice display names
                        var mySeries = [
                            {type: "combo", yKey: "usage", yDisplayName: "{/literal}{$lang.diskUsage}{literal}", xDisplayName: "Date"},
                            {type: "combo", yKey: "usageio", yDisplayName: "{/literal}{$lang.diskIoUsage}{literal}", xDisplayName: "Date"}
                        ];

                        var mychart = new Y.Chart({
                            legend: {
                                position: "top",
                                width: 300,
                                height: 300,
                                styles: {
                                    hAlign: "center",
                                    hSpacing: 4
                                }
                            },
                            dataProvider: data['data'],
                            categoryKey: "date",
                            axes: myAxes,
                            seriesCollection: mySeries,
                            render: "#chart_disk",
                            styles: {
                                axes: {
                                    date: {
                                        label: {
                                            rotation: -60
                                        }
                                    }
                                }
                            },
                        });
                    });
                });
            }

            loadMemCpu();
            jQuery('.cpumem .btn-info').click(function() {
                loadMemCpu();
            });

            loadNet();
            jQuery('.net .btn-info').click(function() {
                loadNet();
            });

            loadQuota();
            jQuery('.disk .btn-info').click(function() {
                loadQuota();
            });

            jQuery('input[name="from"]').datepicker({dateFormat: "yy-mm-dd"});
            jQuery('input[name="to"]').datepicker({dateFormat: "yy-mm-dd"});
            jQuery('input[name="from"]').change(function() {
                var date = new Date(jQuery(this).val());
                date.setDate(date.getDate() + 1);
                jQuery(this).parents('.selectdate').find('input[name="to"]').datepicker('option', 'minDate', date);
            });
            jQuery('input[name="from"]').change();

        });
    </script>
{/literal}

<form method="post" action="" class="form-horizontal" id="firewallList">
    <input type="hidden" name="itemid" value="{$edit.id}" class="id" />
    <input type="hidden" name="go" value="" class="actionInput" />

    {if $success || $error || $warning}
        <div class="alert alert-{if $error}error{elseif $success}success{/if}">
            <button class="close caclose" data-dismiss="alert" type="button">×</button>
            {if $error}
                {$error} 
            {else}
                {$success}
                {$warning}
            {/if}
        </div>
    {/if} 
    <div class="stats">
        <h2 style="font-size: 24px; margin-bottom: 5px;">{$lang.memcpuUsage}</h2>
        {if $enableCharts}
            <div class="form-inline selectdate cpumem">
                <label>{$lang.fromDate}</label>
                <input type="text" class="input-small datepicker" value="{$from}"  name="from" />
                <label>{$lang.toDate}</label>
                <input type="text" class="input-small datepicker" value="{$to}" name="to" />
                <button type="button" class="btn btn-info">{$lang.showChart}</button>
            </div>
            <div class="clearfix"></div>
            <div id="cpumem" class="chart"></div>
        {/if}
        <div class="clearfix"></div>
        <table class="table">
            <thead>
                <tr>
                    <th colspan="3">{$lang.curmemcpuUsage}</th>
                </tr>
            </thead>
            <tr>
                <td>{$lang.cpuCurrUsage}</td>
                <td><span>{$cpuCurrent}%</span></td>
                <td class="span6">
                    <div class="progress">
                        <div class="bar{if $cpuCurrent gt 89} bar-danger{/if}" style="width: {$cpuCurrent}%;"></div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>{$lang.memCurrUsage}</td>
                <td>{$memUsed} {$memUnit} / {$memAvaible} {$memUnit} ({$memUsedP}%)</td>
                <td>
                    <span></span>
                    <div class="progress">
                        <div class="bar{if $memUsedP gt 89} bar-danger{/if}" style="width: {$memUsedP}%;"></div>
                    </div>
                </td>
            </tr>
            {if $load1}
                <tr>
                    <td>{$lang.cpuloadAvg}</td>
                    <td colspan="2">{$load1}, {$load2}, {$load3}</td>
                </tr>
            {/if}
        </table>

        <h2 style="font-size: 24px; margin-bottom: 5px;">{$lang.bwUsage}</h2>
        {if $enableCharts}
            <div class="form-inline selectdate net">
                <label>{$lang.fromDate}</label>
                <input type="text" class="input-small datepicker" value="{$from}"  name="from" />
                <label>{$lang.toDate}</label>
                <input type="text" class="input-small datepicker" value="{$to}" name="to" />
                <button type="button" class="btn btn-info">{$lang.showChart}</button>
            </div>
            <div class="clearfix"></div>
            <div id="chart_net" class="chart"></div>
        {/if}
        <div class="clearfix"></div>

        <table class="table">
            <thead>
                <tr>
                    <th>{$lang.bwUsageThisMonth}</th>
                    <th>{$lang.used}</th>
                    <th>{$lang.available}</th>
                    <th>{$lang.percent}</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{$lang.summary}</td>
                    <td><span>{$bwSum.value} {$bwSum.unit}</span></td>
                    <td><span>{$bwLimit.value} {$bwLimit.unit}</span></td>
                    <td>{$bwPerc}%</td>
                    <td>
                        <div class="progress{if $bwPerc gt 89} progress-danger{/if}">
                            <div class="bar" style="width: {$bwPerc}%;"></div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <h2 style="font-size: 24px; margin-bottom: 5px;">{$lang.diskLbl}</h2>
        {if $enableCharts}
            <div class="form-inline selectdate disk">
                <label>{$lang.fromDate}</label>
                <input type="text" class="input-small datepicker" value="{$from}"  name="from" />
                <label>{$lang.toDate}</label>
                <input type="text" class="input-small datepicker" value="{$to}" name="to" />
                <button type="button" class="btn btn-info">{$lang.showChart}</button>
            </div>
            <div class="clearfix"></div>
            <div id="chart_disk" class="chart"></div>
        {/if}
        <div class="clearfix"></div>
        <table class="table">
            <thead>
                <tr>
                    <th>{$lang.curDiskLbl}</th>
                    <th>{$lang.used}</th>
                    <th>{$lang.available}</th>
                    <th>{$lang.percent}</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="span3">{$lang.diskUsage}</td>
                    <td class="span2"><span>{$diskUsage.value} {$diskUsage.unit}</span></td>
                    <td class="span2"><span>{$diskUsageLimit.value} {$diskUsageLimit.unit}</span></td>
                    <td>{$dsPerc}%</td>
                    <td class="span5">
                        <div class="progress{if $dsPerc gt 89} progress-danger{/if}">
                            <div class="bar" style="width: {$dsPerc}%;"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td >{$lang.diskIoUsage}</td>
                    <td ><span>{$diskUsageIO.value} {$diskUsageIO.unit}</span></td>
                    <td ><span>{$diskUsageIOLimit.value} {$diskUsageIOLimit.unit}</span></td>
                    <td>{$dioPerc}%</td>
                    <td >
                        <div class="progress{if $dioPerc gt 89} progress-danger{/if}">
                            <div class="bar" style="width: {$dioPerc}%;"></div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>                 
</form>
<style type="text/css">
    #mg-wrapper .datepicker {
        min-width: 110px!important;
        height: 34px!important;
        text-align: center;
    }
</style>    