/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
  config.LinkBrowser = false ;
  config.ImageBrowser = false ;
  config.FlashBrowser = false ;
  config.LinkUpload = false ;
  config.ImageUpload = false ;
  config.FlashUpload = false ;
  
  /* Toolbars */
  config.toolbar = 'Capital';
  
  config.toolbar_Easy =
    [
        ['Source','-','Preview'],
        ['Cut','Copy','Paste','PasteText','PasteFromWord',],
        ['Undo','Redo','-','SelectAll','RemoveFormat'],
        ['Styles','Format'], ['Subscript', 'Superscript', 'TextColor'], ['Maximize','-','About'], '/',
        ['Bold','Italic','Underline','Strike'], ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
        ['Link','Unlink','Anchor'], ['Image', 'Attachment', 'Flash', 'Embed'],
        ['Table','HorizontalRule','Smiley','SpecialChar','PageBreak']
    ];
  config.toolbar_Capital =
    [
      ['Undo','Redo','-','Bold','Italic','-','NumberedList','BulletedList','-','Outdent','Indent','Blockquote','-','Link','Unlink']
    ];
};
