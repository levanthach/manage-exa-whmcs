<script type="text/javascript" src="/assets/js/tiny_mce/jquery.tinymce.js"></script><script type="text/javascript">
    $().ready(function() {
        $("textarea.tinymce").tinymce({
            // Location of TinyMCE script
            script_url : "/assets/js/tiny_mce/tiny_mce.js",

            // General options
            theme : "advanced",
            plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,advlist",
            entity_encoding : "raw",

            // Theme options
            theme_advanced_buttons1 : "fontselect,fontsizeselect,forecolor,backcolor,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code",
            theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
            theme_advanced_toolbar_location : "top",
            theme_advanced_toolbar_align : "left",
            theme_advanced_statusbar_location : "bottom",
            theme_advanced_resizing : true,
            convert_urls : false,
            relative_urls : false,
            forced_root_block : false
        });
    });

</script>
<h3>Helooo Demo</h3>
<textarea name="description" id="message" rows=20 style="width:100%" class="tinymce">
</textarea>