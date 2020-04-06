<?php
/**********************************************************************
 *  Parallels Cloud Servers
 *
 *
 *  CREATED BY MODULESGARDEN       ->       http://modulesgarden.com
 *  CONTACT                        ->       contact@modulesgarden.com
 *  Author                         ->       Michal Czech
 *
 *
 *
 *
 * This software is furnished under a license and may be used and copied
 * only  in  accordance  with  the  terms  of such  license and with the
 * inclusion of the above copyright notice.  This software  or any other
 * copies thereof may not be provided or otherwise made available to any
 * other person.  No title to and ownership of the  software is  hereby
 * transferred.
 *
 *
 **********************************************************************/

$_LANG['global']['statusLbl'] = 'Status';
$_LANG['global']['status'][0] = 'Unknown';
$_LANG['global']['status'][1] = 'None Exists';
$_LANG['global']['status'][2] = 'Configuration';
$_LANG['global']['status'][3] = 'Down';
$_LANG['global']['status'][4] = 'Mounted';
$_LANG['global']['status'][5] = 'Suspend';
$_LANG['global']['status'][6] = 'Running';
$_LANG['global']['status'][7] = 'Repairing';
$_LANG['global']['status'][8] = 'The license is not valid';
$_LANG['global']['status']['Pending'] = 'Pending';
$_LANG['global']['actions'] = 'Actions';
$_LANG['global']['action'] = 'Action';
$_LANG['global']['scheduled_tasks'] = 'Scheduled Tasks';
$_LANG['global']['sheduled_desc'] = 'The scheduled tasks listed below will be executed in the next few minutes via cron.';
$_LANG['global']['message'] = 'Message';
$_LANG['global']['noaction'] = 'You do not have any scheduled tasks';
$_LANG['global']['delete'] = 'Delete';
$_LANG['global']['created_at']= 'Created';
$_LANG['global']['updated_at']= 'Updated';
$_LANG['global']['nomessage'] = 'No message yet';
$_LANG['global']['noperformed'] = 'Not performed yet';
$_LANG['global']['attempt'] = 'Attempts';
$_LANG['global']['suspend'] = 'Suspend';
$_LANG['global']['stop'] = 'Stop';
$_LANG['global']['start'] = 'Start';
$_LANG['global']['restart'] = 'Restart';
$_LANG['global']['resume'] = 'Resume';
$_LANG['global']['reinstall'] = 'Reinstall';
$_LANG['global']['hostname'] = 'Hostname';
$_LANG['global']['platform'] = 'Platform';
$_LANG['global']['ospackage'] = 'OS Package';
$_LANG['global']['ip'] = 'IP Address';
$_LANG['global']['guestTools'] = 'Guest Tools';
$_LANG['global']['username'] = 'Username';
$_LANG['global']['password'] = 'Password';
$_LANG['global']['sshKeyManagement'] = 'SSH Key';
$_LANG['global']['addSshKey'] = 'Add SSH Key';
$_LANG['global']['downloadSshKey'] = 'Download SSH Key';
$_LANG['global']['passwordHidden'] = 'Show Password';
$_LANG['global']['servertype'] = 'Server Type';
$_LANG['global']['container'] = 'Container';
$_LANG['global']['virtual'] = 'Virtual Machine';
$_LANG['global']['success']['start'] = '|The Virtual Machine has been started successfully';
$_LANG['global']['success']['suspend'] = 'The Virtual Machine has been suspended successfully';
$_LANG['global']['success']['stop'] = 'The Virtual Machine has been stopped successfully';
$_LANG['global']['success']['restart'] = 'The Virtual Machine has been restarted successfully';
$_LANG['global']['success']['resume'] = 'The Virtual Machine has been resumed successfully';
$_LANG['global']['success']['reinstall'] = 'The task to reinstall Virtual Machine has been successfully scheduled';
$_LANG['global']['reinstallSure'] = 'Are you sure that you want to reinstall the virtual machine?';
$_LANG['global']['reinstallDetails'] = 'All data will be overwritten';
$_LANG['global']['lblCancel'] = 'Cancel';

$_LANG['global']['success']['sshKeyAdded'] = 'The SSH Key has been added successfully';
$_LANG['global']['success']['hostnameChanged'] = 'The hostname has been changed successfully';
$_LANG['global']['error']['emptyResponse'] = 'Something went wrong, please try again.';

$_LANG['global']['modal']['addSshKey'] = 'Add New SSH Key';
$_LANG['global']['modal']['sshKey'] = 'SSH Key';
$_LANG['global']['modal']['button']['cancel'] = 'Cancel';
$_LANG['global']['modal']['button']['add'] = 'Add';
$_LANG['global']['modal']['description'] = 'Here you can provide your public SSH key to use it as authentication when connecting to a remote server. Please provide it in the OpenSSH format.';
$_LANG['global']['modal']['placeholder'] = 'ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkcv2Pl5...';

$_LANG['global']['modal']['changeHostname']             = 'Change Hostname';
$_LANG['global']['modal']['hostname']                   = 'Hostname';
$_LANG['global']['modal']['hostnameDescription']        = 'Enter New Hostname';
$_LANG['global']['modal']['button']['change']           = 'Change';


$_LANG['global']['cpuunits'] = 'CPU Cores';
$_LANG['global']['cpupower'] = 'CPU Power';
$_LANG['global']['cpulimit'] = 'CPU Limit';
$_LANG['global']['memory'] = 'Memory';
$_LANG['global']['hddSize'] = 'HDD';
$_LANG['global']['backupSize'] = 'Backup Size';

$_LANG['global']['tasks']['changePackage'] = 'Hardware Settings Update';
$_LANG['global']['tasks']['changePassword'] = 'Change Password';
$_LANG['global']['tasks']['disableConsole'] = 'Disable Console';
$_LANG['global']['tasks']['installTools']   = 'Install Guest Tools';
$_LANG['global']['tasks']['removeAllSnapshots']   = 'Remove All Snapshots';
$_LANG['global']['tasks']['findVMOnNodes']  = 'Searching VM on other nodes';
$_LANG['global']['tasks']['createVM']       = 'Creating VM';
$_LANG['global']['tasks']['deleteVM']       = 'Deleting VM';
$_LANG['global']['tasks']['cloneToTemplate']= 'Create Template';
$_LANG['global']['tasks']['deleteTemplate'] = 'Delete Template';
$_LANG['global']['tasks']['rebuildVM']      = 'Reinstall VM';
$_LANG['global']['tasks']['createBackup']   = 'Create Backup';
$_LANG['global']['tasks']['createSnapshot'] = 'Create Snapshot';
$_LANG['global']['tasks']['removeBackup']   = 'Remove Backup';

$_LANG['global']['AdminCustomButtonArray']['startVM']               = "Start VM";
$_LANG['global']['AdminCustomButtonArray']['stopVM']                = "Stop VM";
$_LANG['global']['AdminCustomButtonArray']['restartVM']             = "Restart VM";
$_LANG['global']['AdminCustomButtonArray']['suspendVM']             = "Suspend VM";
$_LANG['global']['AdminCustomButtonArray']['resumeVM']              = "Resume VM";
$_LANG['global']['AdminCustomButtonArray']['migrateVM']             = "Migrate VM";
$_LANG['global']['AdminCustomButtonArray']['reinstallVM']           = "Reinstall VM";


$_LANG['global']['selectOtherNode']   = 'Select Node to migrate';
$_LANG['global']['cantUseNode']       = 'You cannot use this node';
$_LANG['global']['tooManyIPs']        = 'You have too many IP addresses on the list, please remove them before continuing';
$_LANG['global']['actionInSchedule']  = 'Your action is currently in queue from %s. Please wait until it is completed';
$_LANG['global']['stopToReinstall']   = 'You have to stop Virtual Machine before reinstalling it';

$_LANG['global']['stopToChangeHostname']   = 'You have to stop Virtual Machine before changing a hostname';
$_LANG['global']['cantfindVMbyname']  = 'Cannot find VM with a given name: ';
$_LANG['global']['wrongVMtype']       = 'Wrong VM type, found VM is: ';

$_LANG['global']['home'] = 'Back to Management';
$_LANG['global']['clientAreaCustomButton']['console']                 = "Console";
$_LANG['global']['clientAreaCustomButton']['snapshotManagement']      = "Snapshots Management";
$_LANG['global']['clientAreaCustomButton']['backupManagement']        = "Backups Management";
$_LANG['global']['clientAreaCustomButton']['firewallManagement']      = "Firewall Management";
$_LANG['global']['clientAreaCustomButton']['usageStatistics']         = "Usage Statistics";
$_LANG['global']['clientAreaCustomButton']['ipManagement']            = "IP Management";
$_LANG['global']['clientAreaCustomButton']['CreateServer']            = "Create Server";
$_LANG['global']['clientAreaCustomButton']['ManageServer']            = "Manage Server";
$_LANG['global']['clientAreaCustomButton']['rebuild']                 = "Rebuild";
$_LANG['global']['clientAreaCustomButton']['mountIso']                = "ISO Management";

$_LANG['global']['clientAreaCustomButtonIcon']['console']             = "icon-facetime-video";
$_LANG['global']['clientAreaCustomButtonIcon']['home']                = "icon-arrow-left";
$_LANG['global']['clientAreaCustomButtonIcon']['backupManagement']    = "icon-hdd";
$_LANG['global']['clientAreaCustomButtonIcon']['firewallManagement']  = "icon-fire";
$_LANG['global']['clientAreaCustomButtonIcon']['usageStatistics']     = "icon-signal";
$_LANG['global']['clientAreaCustomButtonIcon']['ipManagement']        = "icon-globe";
$_LANG['global']['clientAreaCustomButtonIcon']['snapshotManagement']  = "icon-refresh";
$_LANG['global']['clientAreaCustomButtonIcon']['rebuild']             = "icon-retweet";
$_LANG['global']['clientAreaCustomButtonIcon']['mountIso']            = "glyphicon glyphicon-cd";

$_LANG['global']['clientAreaCustomButtonIcon_v7']['console']             = "glyphicon glyphicon-facetime-video";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['home']                = "glyphicon glyphicon-arrow-left";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['backupManagement']    = "glyphicon glyphicon-hdd";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['firewallManagement']  = "glyphicon glyphicon-fire";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['usageStatistics']     = "glyphicon glyphicon-signal";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['ipManagement']        = "glyphicon glyphicon-globe";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['snapshotManagement']  = "glyphicon glyphicon-refresh";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['rebuild']             = "glyphicon glyphicon-retweet";
$_LANG['global']['clientAreaCustomButtonIcon_v7']['mountIso']             = "glyphicon glyphicon-cd";

$_LANG['global']['startToContinue']               = 'You have to start the VM to continue';
$_LANG['global']['pleaseSetupPassword']           = 'Please wait, the Virtual Machine is being prepared';
$_LANG['global']['undefinedPassword']             = 'Your password is undefined';
$_LANG['global']['cantUseThisNode']               = 'You cannot use this node';
$_LANG['global']['cantGetIPfromManager']          = 'Cannot get a free IP address from a Pool assigned in IP Manager';
$_LANG['global']['toomanypublicIP']               = 'You have too many Public IP addresses on the list, please remove them before continuing';
$_LANG['global']['toomanyprivateIP']              = 'You have too many Private IP addresses on the list, please remove them before continuing';
$_LANG['global']['privateAndPublicTheSame']       = 'Public and Private Network cannot be the same, please change the configuration';
$_LANG['global']['canFindBaseSampleOnNode']       = 'Cannot find on node template:';

$_LANG['global']['messages']['System Error, Please Contact Support'] = 'System Error, Please Contact Support';

//Backup Management
$_LANG['backupManagement']['listLbl']               = 'Backups List';
$_LANG['backupManagement']['createLbl']             = 'Create Backup';
$_LANG['backupManagement']['createshelduleLbl']     = 'Schedule Backup';
$_LANG['backupManagement']['updateshelduleLbl']     = 'Update Backup Schedule';
$_LANG['backupManagement']['lblDesc']               = 'Description';
$_LANG['backupManagement']['lblDate']               = 'Date';
$_LANG['backupManagement']['lblSize']               = 'Size';
$_LANG['backupManagement']['lblType']               = 'Type';
$_LANG['backupManagement']['lblRestore']            = 'Restore';
$_LANG['backupManagement']['lblRemove']             = 'Remove';
$_LANG['backupManagement']['backupAdd']             = 'The backup creation is in progress. It should be listed within a few minutes';
$_LANG['backupManagement']['backupAddFalse']        = 'The backup creation is in progress. Please try again after previous action ends';
$_LANG['backupManagement']['backupScheduleAdd']     = 'The backup has been scheduled successfully';
$_LANG['backupManagement']['backupScheduleAddFalse']= 'Scheduling a backup has failed. Please try again';
$_LANG['backupManagement']['backupScheduleEdit']    = 'The scheduled backup has been edited successfully';
$_LANG['backupManagement']['backupScheduleEditFalse']='Editing a scheduled backup has failed. Please try again';
$_LANG['backupManagement']['backupScheduledel']     = 'The scheduled backup has been removed successfully';
$_LANG['backupManagement']['backupScheduledelFalse']= 'Removing a scheduled backup has failed. Please try again';
$_LANG['backupManagement']['backupRestore']         = 'The backup restoration has been scheduled successfully';
$_LANG['backupManagement']['backupRestoreFalse']    = 'Restoring a backup has failed. Please try again';
$_LANG['backupManagement']['backupRemove']          = 'Removing a backup has been scheduled successfully';
$_LANG['backupManagement']['backupRemoveFalse']     = 'Removing a backup has failed. Please try again';
$_LANG['backupManagement']['type'][0]               = 'Full';
$_LANG['backupManagement']['type'][1]               = 'Incremental';
$_LANG['backupManagement']['removePrev']            = 'Remove Previous';
$_LANG['backupManagement']['deleteSure']            = 'Are you sure that you want to remove ';
$_LANG['backupManagement']['backupSure']            = '?';
$_LANG['backupManagement']['restoreSure']           = 'If you restore a backup, all the existing snapshots of the current environment will be automatically erased. Are you sure that you want to restore this backup?';
$_LANG['backupManagement']['deleteScheduleSure']    = 'Are you sure that you want to remove this scheduled backup? ';
$_LANG['backupManagement']['lblCancel']             = 'Cancel';
$_LANG['backupManagement']['action']['remove']      = 'Backup awaits for removal';
$_LANG['backupManagement']['action']['create']      = 'Backup creation in progress';
$_LANG['backupManagement']['force']                 = 'Force - it will try to resolve potential conflicts, or ignore them if no resolution is possible.';
$_LANG['backupManagement']['noscheludedBackup']     = 'No scheduled backups available';
$_LANG['backupManagement']['nobackup']              = 'No backups available';
$_LANG['backupManagement']['back']                  = 'Back';
$_LANG['backupManagement']['proviceDesc']           = 'Please provide a backup description';
$_LANG['backupManagement']['proviceNumberDays']     = 'Please provide a number of days';
$_LANG['backupManagement']['proviceNumberWeeks']    = 'Please provide a number of weeks';
$_LANG['backupManagement']['selectDayofWeek']       = 'Please select at least one day of the week';
$_LANG['backupManagement']['createScheduleLbl']     = 'Create Backup6666 Schedule';
$_LANG['backupManagement']['recurrencepatt']        = 'Recurrence Pattern';
$_LANG['backupManagement']['proviceDesc']           = 'Please provide a backup description';
$_LANG['backupManagement']['createScheduleLbl']     = 'Schedule Backup';
$_LANG['backupManagement']['recurrencepatt']        = 'Recurrence Pattern';
$_LANG['backupManagement']['sheduletypes']['once']  = 'Run Once';
$_LANG['backupManagement']['sheduletypes']['daily'] = 'Repeat Daily';
$_LANG['backupManagement']['sheduletypes']['weekly']= 'Repeat Weekly';
$_LANG['backupManagement']['daily']['every']        = 'Every';
$_LANG['backupManagement']['daily']['every2']       = 'day(s)';
$_LANG['backupManagement']['daily']['day']          = 'Every Weekday';
$_LANG['backupManagement']['daily']['weekday']      = 'Every Weekend';
$_LANG['backupManagement']['weekly']['every']       = 'Recur every';
$_LANG['backupManagement']['weekly']['every2']      = 'week(s) on:';
$_LANG['backupManagement']['weeklyd'][1]            = 'Monday';
$_LANG['backupManagement']['weeklyd'][2]            = 'Tuesday';
$_LANG['backupManagement']['weeklyd'][3]            = 'Wednesday';
$_LANG['backupManagement']['weeklyd'][4]            = 'Thursday';
$_LANG['backupManagement']['weeklyd'][5]            = 'Friday';
$_LANG['backupManagement']['weeklyd'][6]            = 'Saturday';
$_LANG['backupManagement']['weeklyd'][0]            = 'Sunday';
$_LANG['backupManagement']['date']                  = 'Date';
$_LANG['backupManagement']['time']                  = 'Time';
$_LANG['backupManagement']['listSchedules']         = 'Scheduled Backups';
$_LANG['backupManagement']['lblDateCreated']        = 'Date Created';
$_LANG['backupManagement']['sheduleType']           = 'Scheduled Type';
$_LANG['backupManagement']['runInDay']              = 'Run On';
$_LANG['backupManagement']['lastUpdate']            = 'Last Created';
$_LANG['backupManagement']['lblEdit']               = 'Edit';
$_LANG['backupManagement']['and']                   = ' and ';
$_LANG['backupManagement']['editshelduleLbl']       = 'Edit Backup Schedule';
$_LANG['backupManagement']['limitReached']          = 'Backup Quota limit reached';
$_LANG['backupManagement']['used']                  = 'Backup Quota Used';
$_LANG['backupManagement']['of']                    = 'of';
$_LANG['backupManagement']['limit']                 = 'Available Limit';
//Firewall Management
$_LANG['firewallManagement']['lists']['INPUT']      = 'Firewall Input Chain Rules';
$_LANG['firewallManagement']['lists']['OUTPUT']     = 'Firewall Output Chain Rules';
$_LANG['firewallManagement']['lists']['FORWARD']    = 'Firewall Forward Chain Rules';
$_LANG['firewallManagement']['lblDesc']             = 'Rule Name';
$_LANG['firewallManagement']['lblPolicy']           = 'Policy';
$_LANG['firewallManagement']['lblProtocol']         = 'Protocol';
$_LANG['firewallManagement']['lblSrc']              = 'Source';
$_LANG['firewallManagement']['lblDst']              = 'Destination';
$_LANG['firewallManagement']['lblSrcPort']          = 'Source Port';
$_LANG['firewallManagement']['lblDstPort']          = 'Destination Port';
$_LANG['firewallManagement']['lblEnable']           = 'Status';
$_LANG['firewallManagement']['lblRemove']           = 'Remove';
$_LANG['firewallManagement']['lblEdit']             = 'Edit';
$_LANG['firewallManagement']['all']                 = 'All';
$_LANG['firewallManagement']['createLbl']           = 'Create New Rule';
$_LANG['firewallManagement']['editLbl']             = 'Edit Rule';
$_LANG['firewallManagement']['saveLbl']             = 'Save Rule';
$_LANG['firewallManagement']['chainLbl']            = 'Rule Chain';
$_LANG['firewallManagement']['chain']['INPUT']      = 'Input';
$_LANG['firewallManagement']['chain']['OUTPUT']     = 'Output';
$_LANG['firewallManagement']['chain']['FORWARD']    = 'Forward';
$_LANG['firewallManagement']['protocol']['tcp']     = 'TCP';
$_LANG['firewallManagement']['protocol']['udp']     = 'UDP';
$_LANG['firewallManagement']['policy']['ACCEPT']    = 'Accept';
$_LANG['firewallManagement']['policy']['REJECT']    = 'Reject';
$_LANG['firewallManagement']['policy']['DROP']      = 'Drop';
$_LANG['firewallManagement']['lblSrcDstHelp']       = 'Specify an IP address and netmask or leave * for all';
$_LANG['firewallManagement']['lblSrcDstPortHelp']   = 'Specify a port number or use 1000-2000 format for range';
$_LANG['firewallManagement']['success']             = 'The rule has been created successfully';
$_LANG['firewallManagement']['error']               = 'An error has occurred while creating a rule';
$_LANG['firewallManagement']['delsuccess']          = 'The rule has been deleted successfully';
$_LANG['firewallManagement']['delerror']            = 'An error has occurred while deleting the rule';
$_LANG['firewallManagement']['editsuccess']         = 'The rule has been edited successfully';
$_LANG['firewallManagement']['editerror']           = 'An error has occurred while editing the rule';
$_LANG['firewallManagement']['enablesuccess']       = 'The firewall has been turned on successfully';
$_LANG['firewallManagement']['enableerror']         = 'An error has occurred while turning on the firewall';
$_LANG['firewallManagement']['disablesuccess']      = 'The firewall has been turned off successfully';
$_LANG['firewallManagement']['disableerror']        = 'An error has occurred while turning off the firewall';
$_LANG['firewallManagement']['cannotempty']         = 'The name field cannot be empty';
$_LANG['firewallManagement']['deleteSure']          = 'Are you sure that you want to remove ';
$_LANG['firewallManagement']['deleteRule']          = ' rule?';
$_LANG['firewallManagement']['lblCancel']           = 'Cancel';
$_LANG['firewallManagement']['back']                = 'Back';
$_LANG['firewallManagement']['status'][0]           = 'Disabled';
$_LANG['firewallManagement']['status'][1]           = 'Enabled';
$_LANG['firewallManagement']['firewallStatus']      = 'Firewall is currently ';
$_LANG['firewallManagement']['firewallStatusLbl']   = 'Firewall Status';
$_LANG['firewallManagement']['turnon']              = 'Turn On';
$_LANG['firewallManagement']['turnoff']             = 'Turn Off';
$_LANG['firewallManagement']['active']              = 'Active';
$_LANG['firewallManagement']['contStop']            = 'The container is currently stopped, please start it to manage a firewall';
$_LANG['firewallManagement']['noRules']             = 'The firewall has no rules added';

//IP's Management
$_LANG['ipManagement']['ip']                = 'IP Address';
$_LANG['ipManagement']['mask']              = 'Network Mask';
$_LANG['ipManagement']['interface']         = 'Interface';
$_LANG['ipManagement']['mac']               = 'MAC Address';
$_LANG['ipManagement']['gateway']           = 'Gateway';
$_LANG['ipManagement']['available']         = 'Assigned IP Addresses';
$_LANG['ipManagement']['orderNew']          = 'Order New IP Address';
$_LANG['ipManagement']['networkId']         = 'Virtual Network';
$_LANG['ipManagement']['orderIPsuccess']    = 'The new IP address has been ordered successfully. It should be listed soon.';
$_LANG['ipManagement']['orderIPerror']      = 'Cannot order the IP Address, please contact the administrator';
$_LANG['ipManagement']['Invoice']           = 'Invoice';
$_LANG['ipManagement']['deleteIPsuccess']   = 'The IP address will be removed shortly';
$_LANG['ipManagement']['deleteSure']        = 'Are you sure that you want to remove this IP address?';
$_LANG['ipManagement']['orderSure']         = 'Are you sure that you want to order a new IP address?';
$_LANG['ipManagement']['lblCancel']         = 'Cancel';
$_LANG['ipManagement']['lblRemove']         = 'Remove';
$_LANG['ipManagement']['preinvoice']        = ', see';
$_LANG['ipManagement']['lblOrder']          = 'Order';
$_LANG['ipManagement']['numberNew']         = 'Number of new IP addresses';
$_LANG['ipManagement']['publicIP']          = 'Public IP Address';
$_LANG['ipManagement']['privateIP']         = 'Private IP Address';
$_LANG['ipManagement']['duringCration']     = 'During Creation';
$_LANG['ipManagement']['noip']              = 'You do not have any interfaces';
$_LANG['ipManagement']['title']             = 'IP Management';


// monitoring Management
$_LANG['monitoringManagement']['head']              = 'Monitoring Management';
$_LANG['monitoringManagement']['parametr']          = 'Parameter';
$_LANG['monitoringManagement']['usage']             = 'Current Usage';
$_LANG['monitoringManagement']['soft']              = 'Soft Limit';
$_LANG['monitoringManagement']['hard']              = 'Hard Limit';
$_LANG['monitoringManagement']['time']              = 'Time';
$_LANG['monitoringManagement']['cpuUsage']          = 'CPU Usage';
$_LANG['monitoringManagement']['cpuShareUsage']     = 'CPU Share Usage';
$_LANG['monitoringManagement']['memcpuUsage']       = 'Memory And CPU Usage';
$_LANG['monitoringManagement']['memUsage']          = 'Memory Usage';
$_LANG['monitoringManagement']['memShareUsage']     = 'Memory Share Usage';
$_LANG['monitoringManagement']['memCurrUsage']      = 'Memory Current Usage';
$_LANG['monitoringManagement']['memtotal']          = 'Total Memory';
$_LANG['monitoringManagement']['memfree']           = 'Free Memory';
$_LANG['monitoringManagement']['bwUsageThisMonth']  = 'Monthly Bandwidth Usage';
$_LANG['monitoringManagement']['bwUsage']           = 'Bandwidth Usage';
$_LANG['monitoringManagement']['upload']            = 'Upload ';
$_LANG['monitoringManagement']['download']          = 'Download ';
$_LANG['monitoringManagement']['summary']           = 'Summary';
$_LANG['monitoringManagement']['percent']           = 'Percentage';
$_LANG['monitoringManagement']['used']              = 'Used';
$_LANG['monitoringManagement']['available']           = 'Available';
$_LANG['monitoringManagement']['cpuCurrUsage']      = 'CPU Current Usage';
$_LANG['monitoringManagement']['diskLbl']           = 'Disk Usage';
$_LANG['monitoringManagement']['curDiskLbl']        = 'Current Disk Usage';
$_LANG['monitoringManagement']['diskUsage']         = 'Disk Space Usage';
$_LANG['monitoringManagement']['diskIoUsage']       = 'Disk I/O Usage';
$_LANG['monitoringManagement']['curmemcpuUsage']    = 'Current Memory and CPU Usage';
$_LANG['monitoringManagement']['cpuloadAvg']        = 'CPU Average Load';
$_LANG['monitoringManagement']['unlimited']         = 'Unlimited';
$_LANG['monitoringManagement']['months'][1]         = 'Jan.';
$_LANG['monitoringManagement']['months'][2]         = 'Feb.';
$_LANG['monitoringManagement']['months'][3]         = 'Mar.';
$_LANG['monitoringManagement']['months'][4]         = 'Apr.';
$_LANG['monitoringManagement']['months'][5]         = 'May.';
$_LANG['monitoringManagement']['months'][6]         = 'Jun.';
$_LANG['monitoringManagement']['months'][7]         = 'Jul.';
$_LANG['monitoringManagement']['months'][8]         = 'Aug.';
$_LANG['monitoringManagement']['months'][9]         = 'Sep.';
$_LANG['monitoringManagement']['months'][10]        = 'Oct.';
$_LANG['monitoringManagement']['months'][11]        = 'Nov.';
$_LANG['monitoringManagement']['months'][12]        = 'Dec.';
$_LANG['monitoringManagement']['back']              = 'Back';
$_LANG['monitoringManagement']['fromDate']          = 'From: ';
$_LANG['monitoringManagement']['toDate']            = 'To: ';
$_LANG['monitoringManagement']['showChart']         = 'Show Chart';
$_LANG['monitoringManagement']['hiddenCharts']      = 'Charts will be available 24 hours after the VM creation';

//console

$_LANG['console']['showBrowser'] = 'This browser needs Java plugins to run Java applets';
$_LANG['console']['notRunning'] = 'This VM is not running, a console is unavailable';
$_LANG['console']['unableToLoadConsole'] = 'If you want to use a console, at first you must enable it.';
$_LANG['console']['consoleEnabled'] = 'The console has been enabled successfully';
$_LANG['console']['consoleDisabled'] = 'The console has been disabled successfully';
$_LANG['console']['confError']  = 'Configuration Error, please contact the administrator';
$_LANG['console']['openInFullScreen']   = 'VM resolution is too high,';
$_LANG['console']['clickON']            = 'Click';
$_LANG['console']['openInFullScreen2']  = 'to open in a new window';

//Virtual DataCenter Module

$_LANG['global']['serverList']  = 'Servers List';
$_LANG['global']['createServer']= 'Create New Server';
$_LANG['global']['editServer']  = 'Save Changes';

$_LANG['global']['id']          = 'ID';
$_LANG['global']['details']     = 'Details';
$_LANG['global']['noServers']   = 'You do not have any created servers yet';
$_LANG['global']['notEnough']   = 'You do not have enough resources to create a new server';
$_LANG['global']['leftemptytounchange'] = 'Leave empty if you do not want to change it';
$_LANG['global']['hostID']      = 'Host ID';

$_LANG['global']['serverParams']['osTemplate']          = 'OS Template';
$_LANG['global']['serverParams']['baseTemplate']        = 'Base Template';
$_LANG['global']['serverParams']['rootPassword']        = 'Administrator Password';
$_LANG['global']['serverParams']['ip_number']           = 'Public IP Address';
$_LANG['global']['serverParams']['ip_number_secondary'] = 'Private IP Address';
$_LANG['global']['serverParams']['cpuunits']            = 'CPU Cores';
$_LANG['global']['serverParams']['cpulimit_mhz']        = 'CPU Limit';
$_LANG['global']['serverParams']['cpulimit']            = 'CPU Limit';
$_LANG['global']['paramsUnits']['cpulimit_mhz']         = 'MHz';
$_LANG['global']['paramsUnits']['cpulimit']             = 'MHz';
$_LANG['global']['serverParams']['memory_gb']           = 'Memory';
$_LANG['global']['paramsUnits']['memory_gb']            = 'GB';
$_LANG['global']['serverParams']['hddSize_gb']          = 'Disk Size';
$_LANG['global']['paramsUnits']['hddSize_gb']           = 'GB';
$_LANG['global']['serverParams']['backup_quota_gb']     = 'Backup Quota';
$_LANG['global']['paramsUnits']['backup_quota_gb']      = 'GB';
$_LANG['global']['serverParams']['templates_quota_gb']  = 'Templates Space Quota';
$_LANG['global']['paramsUnits']['templates_quota_gb']   = 'GB';
$_LANG['global']['serverParams']['io_limit_mb']         = 'I/O Limit';
$_LANG['global']['paramsUnits']['io_limit_mb']          = 'MB';
$_LANG['global']['serverParams']['iops_limit']          = 'I/Ops Limit';
$_LANG['global']['paramsUnits']['iops_limit']           = 'Nps';
$_LANG['global']['serverParams']['vmnumber']            = 'Number of Virtual Machines';

$_LANG['global']['modifyVM']            = 'Change Settings';
$_LANG['global']['currentUsed']         = 'Used';
$_LANG['global']['minNumber']           = 'Minimum Number';
$_LANG['global']['avaiableResource']    = 'Available Resources';
$_LANG['global']['addIP']               = 'Add New IP';
$_LANG['global']['reachedresources']    = 'You reached maximum amount of these resources';
$_LANG['global']['minamount']           = 'You reached minimal amount of these resources';
$_LANG['global']['netmask']             = 'Net Mask';
$_LANG['global']['mac']                 = 'Mac';
$_LANG['global']['delete']              = 'Delete';
$_LANG['global']['noip']                = 'You do not have any interfaces';
$_LANG['global']['newIP']               = 'New interfaces';
$_LANG['global']['chagesSuccesfullSave']= 'Changes have been saved successfully, please wait until the tasks are completed';
$_LANG['global']['createVMSuccesfull']  = 'The Virtual Machine creation has been scheduled successfully';
$_LANG['global']['vmCurrentWait']       = 'Virtual Machine is waiting for changes to be done, please come back in a moment';
$_LANG['global']['delteVMsure']         = 'Virtual Machine';
$_LANG['global']['delteVMsure2']        = 'will be deleted. If you continue, this action cannot be undone. Are you sure that you want to proceed?';
$_LANG['global']['lblContinue']         = 'Continue';
$_LANG['global']['generatePassowrd']    = 'Generate Password';
$_LANG['global']['generatedPassowrd']   = 'Generated Password';
$_LANG['global']['repeatPassowrd']      = 'Repeat Password';
$_LANG['global']['validateName']        = 'Name must be unique and contain at least 6 characters';
$_LANG['global']['validatePassword']    = 'Password must contain at least 8 characters';
$_LANG['global']['notSamePassword']     = 'Provided password do not match';
$_LANG['global']['deleteConfirm']       = 'Deleting a virtual machine has been scheduled successfully';
$_LANG['global']['view']                = 'View';
$_LANG['global']['edit']                = 'Edit';
$_LANG['global']['usedResources']       = 'Used Resources';
$_LANG['global']['notenoughdisk']       = 'Not enough free disk space for this template. You will need: ';
$_LANG['global']['of']                  = 'of';
$_LANG['global']['free']                = 'free';
$_LANG['global']['currentUsed']         = 'Used';
$_LANG['global']['oneoftaskinProgress'] = 'One of the VM tasks is currently in progress, please wait until it is complete';
$_LANG['global']['lblDelete']           = 'Delete';
$_LANG['global']['createTemplate']      = 'Create OS Template';
$_LANG['global']['cloneToTemplateSure'] = 'Are you sure that you want to create a template from this Virtual Machine?';
$_LANG['global']['cloneToTemplateSure2']= 'The original virtual machine is running and will be restarted during clone task';
$_LANG['global']['templateNameLbl']     = 'Template Name';
$_LANG['global']['templateFromLbl']     = 'Template from';
$_LANG['global']['crateTemplateSuccess']= 'The template creation has been scheduled successfully';
$_LANG['global']['templateName']        = 'Name';
$_LANG['global']['templatesList']       = 'Private Templates List';
$_LANG['global']['templateSize']        = 'Size';
$_LANG['global']['notemplates']         = 'You do not have any private templates created yet';
$_LANG['global']['licenseReached']      = 'You reached the maximum number of licenses for the following OS';
$_LANG['global']['deleteTemplate']      = 'Private Template';
$_LANG['global']['deleteTemplate2']     = 'will be deleted. If you continue, this action cannot be undone. Are you sure that you want to proceed?';
$_LANG['global']['notenoughtSpaceForTemplate'] = 'Not enough disk space for private templates';
$_LANG['global']['deleteTemplateConfirm'] = 'Deleting a template has been scheduled successfully';
$_LANG['global']['alllicenseReached']   = 'You reached the maximum number of licenses for any OS';
$_LANG['global']['licenseCount']        = 'Number of licenses ';
$_LANG['global']['cannotReinstall']     = 'Cannot reinstall, source templates are not available';

$_LANG['global']['messages']['migrationPleaseWait'] = 'The VM is searching, please wait';
$_LANG['monitoringManagement']['usageNoDataAvailable'] = 'No data available';




$_LANG['snapshotManagement']['table']['name'] = "Name";
$_LANG['snapshotManagement']['table']['date'] = "Date";
$_LANG['snapshotManagement']['table']['size'] = "Size";
$_LANG['snapshotManagement']['table']['size'] = "Size";
$_LANG['snapshotManagement']['table']['revert'] = "Revert";
$_LANG['snapshotManagement']['table']['remove'] = "Remove";
$_LANG['snapshotManagement']['nosnpashot'] = "No snapshots available";

$_LANG['snapshotManagement']['title']['snapshotList']   = "Snapshots List";


$_LANG['snapshotManagement']['button']['createSnapshot'] = "Create Snapshot";


$_LANG['snapshotManagement']['modal']['createSnapshot'] = "Create Snapshot";
$_LANG['snapshotManagement']['modal']['name'] = "Snapshot Name";
$_LANG['snapshotManagement']['modal']['nameDescription'] = "Please provide a snapshot name";

$_LANG['snapshotManagement']['modal']['removeInformation'] = "Are you sure that you want to delete this snapshot?";

$_LANG['snapshotManagement']['modal']['revertInformation'] = "Are you sure that you want to revert this snapshot?";



$_LANG['snapshotManagement']['modal']['button']['create'] = "Create";
$_LANG['snapshotManagement']['modal']['button']['delete'] = "Delete";
$_LANG['snapshotManagement']['modal']['button']['revert'] = "Revert";
$_LANG['snapshotManagement']['modal']['button']['cancel'] = "Cancel";



$_LANG['snapshotManagement']['action']['create'] = "Snapshot creation in progress";
$_LANG['snapshotManagement']['action']['remove'] = "Snapshot awaits for removal";



$_LANG['global']['messages']['snapshotNameIsEmpty'] = "Please provide a snapshot name.";
$_LANG['global']['messages']['snapshotTaskExist'] = "The snapshot is being created. Please try again after previous action ends.";
$_LANG['global']['messages']['snapshotTaskCreate'] = "The snapshot is being created. It will be added to the listed within a few minutes.";
$_LANG['global']['messages']['snapshotTaskRemove'] = "The snapshot removal has been scheduled successfully";
$_LANG['global']['messages']['snapshotIDIsEmpty'] = "Something went wrong, please try again.";
$_LANG['global']['messages']['snapshotRevertStart'] = "The snapshot reversion has been scheduled successfully";
$_LANG['global']['messages']['snapshotLimitIsReached'] = "You have reached the maximum number of snapshots. You can have up to %s snapshots.";


$_LANG['enableConsole'] = "Enable Console";
$_LANG['enableConsoleTitle'] = "Enable Console";
$_LANG['enableConsoleAlert'] = "Are you sure that you want to enable console? Enabling console will reduce the security of this virtual machine.";
$_LANG['consoleTitle'] = "Console";


$_LANG['disableConsole'] = "Disable Console";
$_LANG['disableConsoleTitle'] = "Disable Console";
$_LANG['disableConsoleAlert'] = "Are you sure that you want to disable console?";


$_LANG['rebuild']['title']['rebuild']        = "Rebuild Server";
$_LANG['rebuild']['osTemplate']              = "Select OS Template";
$_LANG['rebuild']['actionRebuild']           = "Rebuild";
$_LANG['rebuild']['noAvailableTemplate']     = "No available OS templates";
$_LANG['rebuild']['stopToReinstall']         = 'You have to stop the machine before you can rebuild it.';

$_LANG['rebuild']['modal']['button']['cancel'] = "Cancel";
$_LANG['rebuild']['modal']['button']['rebuild'] = "Rebuild";
$_LANG['rebuild']['modal']['rebuildContent'] = "Are you sure that you want to rebuild the server?";
$_LANG['rebuild']['modal']['rebuildTitle']    = "Rebuild Server";


$_LANG['global']['messages']['rebuildTaskExist'] = "The rebuild task is being created. Please try again after previous action ends.";
$_LANG['global']['messages']['osTemplateEmpty'] = "OS template cannot be empty.";
$_LANG['global']['messages']['rebuildTaskCreate'] = "The rebuilding process has started. The machine will be ready within a few minutes.";
$_LANG['global']['messages']['serverMustBeStopped'] = "Cannot rebuild the server. It must be stopped beforehand.";


$_LANG['mountIso']['title']['mountIso']       = "Mount ISO Image";
$_LANG['mountIso']['osTemplate']              = "Select ISO Image";
$_LANG['mountIso']['actionMount']           = "Mount";
$_LANG['mountIso']['noAvailableTemplate']     = "No available ISO images";

$_LANG['mountIso']['modal']['button']['cancel'] = "Cancel";
$_LANG['mountIso']['modal']['button']['mount'] = "Mount";
$_LANG['mountIso']['modal']['mountContent'] = "Are you sure that you want to mount the selected ISO?";
$_LANG['mountIso']['modal']['mountTitle']    = "Mount ISO Image";
$_LANG['mountIso']['bootable']    = "Bootable";
$_LANG['mountIso']['yes']    = "Yes";
$_LANG['mountIso']['no']    = "No";

$_LANG['mountIso']['cdRom']              = "Select CD/DVD-ROM";
$_LANG['global']['messages']['osTemplateEmpty'] = "ISO Image cannot be empty.";
$_LANG['global']['messages']['cdRomEmpty'] = "CD/DVD-ROM cannot be empty.";
$_LANG['global']['messages']['mountSuccess'] = "ISO Image has been mounted.";
$_LANG['global']['cdrom'] = 'CD/DVD-ROM';
$_LANG['global']['disk'] = 'Disk';
$_LANG['global']['hdd'] = 'HDD';
$_LANG['global']['net'] = 'Net';
$_LANG['global']['iso'] = 'ISO';
$_LANG['global']['nocdrom'] = 'You do not have any mounted ISO';
$_LANG['mountIso']['actionUnmount']           = "Unmount";
$_LANG['global']['stopToMount']   = 'You have to stop the machine before mounting an ISO.';
$_LANG['global']['modal']['changeBootDevice'] = 'Change Boot Device';
$_LANG['global']['modal']['bootDevice'] = 'Boot Device';
$_LANG['global']['success']['bootDeviceChanged']   = 'The boot device has been changed successfully';
$_LANG['global']['bootDevice'] = 'Boot Device';


$LANG['pleaseEnterIPAddress']                     = 'Please enter IP address...';
$LANG['pleaseEnterNodeName']                      = 'Please enter node name...';
$LANG['VMStatus']                                 = 'Status';
$LANG['name']                                     = 'Name';
$LANG['type']                                     = 'Type';
$LANG['baseTemplate']                             = 'Base Sample';
$LANG['OSTemplate']                               = 'OS Template';
$LANG['IPAddress']                                = 'IP Address';
$LANG['virtualMachine']                           = 'Virtual Machine';
$LANG['unknown']                                  = 'Unknown';
$LANG['noneExists']                               = 'None Exists';
$LANG['configuration']                            = 'Configuration';
$LANG['down']                                     = 'Down';
$LANG['mounted']                                  = 'Mounted';
$LANG['suspend']                                  = 'Suspend';
$LANG['running']                                  = 'Running';
$LANG['repairing']                                = 'Repairing';
$LANG['licenseIsNotValid']                        = 'License is not valid';
$LANG['id']                                       = 'ID';
$LANG['client']                                   = 'Client';
$LANG['created']                                  = 'Created';
$LANG['status']                                   = 'Status';
$LANG['type']                                     = 'Type';
$LANG['baseSample']                               = 'Base Sample';
$LANG['assignedIPAddresses']                      = 'Assigned IP Addresses';
$LANG['details']                                  = 'Details';
$LANG['noAssignedIPAddressesYet']                 = 'IP addresses are not assigned yet';
$LANG['listOfIPAddresses']                        = 'List of IP Addresses';
$LANG['more']                                     = 'More';
$LANG['view']                                     = 'View';
$LANG['and']                                      = 'And';
$LANG['nothingToDisplay']                         = 'Nothing to display';
$LANG['toggleFiltersBox']                         = 'Toggle Filters Box';
$LANG['timePeriod']                               = 'Time Period';
$LANG['from']                                     = 'From';
$LANG['to']                                       = 'To';
$LANG['show']                                     = 'Show';
$LANG['cpu']                                      = 'CPU';
$LANG['counter']                                  = 'Counter';
$LANG['current']                                  = 'Current';
$LANG['max']                                      = 'Max';
$LANG['average']                                  = 'Average';
$LANG['cpuUsage']                                 = 'CPU Usage';
$LANG['cpuIdleTime']                              = 'CPU Idle Time';
$LANG['averageLoad']                              = 'Average Load';
$LANG['averageNumberOfProccessInTheLastMinute']   = 'Average number of processes in the last minute';
$LANG['averageNumberOfProccessInTheLast5Minutes'] = 'Average number of processes in the last 5 minutes';
$LANG['averageNumberOfProcessInTheLast15Minutes'] = 'Average number of processes in the last 15 minutes';
$LANG['memory']                                   = 'Memory';
$LANG['percent']                                  = 'Percentage';
$LANG['physicalMemoryUsage']                      = 'Physical Memory Usage';
$LANG['swapMemoryUsage']                          = 'Swap Memory Usage';
$LANG['disk']                                     = 'Disk';
$LANG['diskSize']                                 = 'Disk Size';
$LANG['diskInodes']                               = 'Disk Inodes';
$LANG['diskIO']                                   = 'Disk IO';
$LANG['network']                                  = 'Network';
$LANG['incoming']                                 = 'Incoming';
$LANG['outgoing']                                 = 'Outgoing';
$LANG['amountOfDataSent']                         = 'Amount of Data Sent';
$LANG['numberOfPackets']                          = 'Number of Packets';
$LANG['nodeUsage']                                = 'Node Usage';
$LANG['address']                                  = 'Address';
$LANG['numberOfVm']                               = 'Number Of VM';
$LANG['viewUsage']                                = 'View Usage';
$LANG['ipManagement']                             = 'IP Management';
$LANG['viewVirtualMachines']                      = 'View Virtual Machines';
$LANG['editNode']                                 = 'Edit Node';
$LANG['disabled']                                 = 'Disabled';
$LANG['usage']                                    = 'Usage';
$LANG['virtualMachines']                          = 'Virtual Machines';
$LANG['edit']                                     = 'Edit';
$LANG['addNode']                                  = 'Add Node';
$LANG['Search']                                   = 'Search';
$LANG['virtualServersOnXNode']                    = 'Virtual Servers on %s Node';
$LANG['taskDeleted']                              = 'Task Deleted';
$LANG['taskDeleteAction']                         = 'Cannot Delete Task';
$LANG['virtualMachineName']                       = 'VM Name';
$LANG['action']                                   = 'Action';
$LANG['lastUpdate']                               = 'Last Update';
$LANG['attempts']                                 = 'Attempts';
$LANG['delete']                                   = 'Delete';
$LANG['deleteTaskQuestion']                       = 'Are you sure that you want to delete this task?';
$LANG['SyncNodes']                                = 'Synchronize Nodes For Modules';

$LANG['status_0'] = 'Unknown';
$LANG['status_1'] = 'None Exists';
$LANG['status_2'] = 'Configuration';
$LANG['status_3'] = 'Down';
$LANG['status_4'] = 'Mounted';
$LANG['status_5'] = 'Suspend';
$LANG['status_6'] = 'Running';
$LANG['status_7'] = 'Repairing';
$LANG['status_8'] = 'The license is not valid';

