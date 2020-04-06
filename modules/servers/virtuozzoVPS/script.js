function action(formId,action){
   jQuery('#' + formId).attr('action',document.location)
   jQuery('#' + formId).find('.'+action).click(function(){
        jQuery('#' + formId).find('.id').val(jQuery(this).attr('data-id'));
        jQuery('#' + formId).find('.id2').val(jQuery(this).attr('data-id2'));

        if(jQuery('#' + formId).find('.'+action+'Alert').hasClass(action+'Alert'))
        {
            jQuery('#' + formId).find('.'+action+'Alert').find('.name').text(jQuery(this).attr('data-name'));
            //jQuery('#' + formId).find('.'+action+'Alert').removeClass('jshidden');
            
            if(action == 'orderIP' || action == 'delete' || action == 'restore' || action == 'deleteSchedule')
            {
                var content =  jQuery('#' + formId).find('.'+action+'Alert').parent().clone();
                
                content.find('.'+action+'Alert').removeClass('jshidden');
                content.find('.table, .ipOrder, .hideitjs, .alert-success').addClass('jshidden');
                //.removeClass('jshidden').outerHTML
                jQuery('#greyout').fadeIn();
                jQuery('#popupcontainer').slideDown();
                
                jQuery('#popuphtml').html(content);
            }
            else
            {
                jQuery('#' + formId).find('.'+action+'Alert').removeClass('jshidden');
                jQuery('#' + formId).find('.'+action+'Alert').show();
            }
            
            var pos = jQuery('#' + formId + ' .' + action + 'Alert').position();
            
            jQuery('html, body').animate({scrollTop:pos.top - 20}, 'fast');
        }
        else
        {
             jQuery('#' + formId).find('.actionInput').val(action);
             jQuery('#' + formId).submit();
        }
   });
   jQuery('#' + formId).find('.'+action+'Alert').find('.cancel').click(function(){
        jQuery('#' + formId).find('.id').val('');
        jQuery('#' + formId).find('.id2').val('');
        jQuery('#' + formId).find('.'+action+'Alert').addClass('jshidden');
        return false;
   });
}

jQuery(document).ready(function(){
   jQuery('.pva .alert .close').click(function(){
        jQuery(this).parent().hide();
   });
   
   jQuery(document).on('click', '.cancel', function()
   {
       jQuery('[class$="Alert"]').addClass('jshidden');
       jQuery('#pcsCreate, #pcsCreateSchedule, #pscEditShedule').hide();
       
       jQuery('#greyout').fadeOut();
       jQuery('#popupcontainer').hide();
   });
   
   jQuery(document).on('click', '[name="ipType"]', function()
   {
       // disabled="disabled"
       
       jQuery('#orderIPbtn').prop('disabled', false).removeClass('disabled');
   });
   
});