CKEDITOR.editorConfig = function (config) {

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline", "Subscript",  "Superscript"], 
    ["Image", "Smiley", "Link", "Unlink"],
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
  ];
  config.toolbar = "mini";
  config.filebrowserImageBrowseUrl = '/ckeditor/pictures';
  config.filebrowserImageUploadUrl = '/ckeditor/pictures';
  // config.justifyClasses = [ 'AlignLeft', 'AlignCenter', 'AlignRight', 'AlignJustify' ];
};

// config.toolbar_mini = [
//     { name: 'clipboard', items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo'] }, 
//     { name: 'tools', items: ['Maximize', 'ShowBlocks', '-', 'About'] }, '/', 
//     { name: 'basicstyles', items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat'] }, 
//     { name: 'paragraph', items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl'] }, 
//     { name: 'links', items: ['Link', 'Unlink', 'Anchor'] }, '/',  
//     { name: 'insert', items: ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'] }
//   ];
//   config.toolbar = 'mini';
//   return true;
// };

 // config.toolbarGroups = [
 //   name: 'alignment', groups : [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ] }
 //  ];