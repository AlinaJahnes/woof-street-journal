CKEDITOR.editorConfig = function (config) {

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline", "Subscript",  "Superscript", "Image", "Smiley", "Link"]
  ];
  config.toolbar = "simple";
  config.filebrowserImageBrowseUrl = '/ckeditor/pictures';
  config.filebrowserImageUploadUrl = '/ckeditor/pictures';
  config.justifyClasses = [ 'AlignLeft', 'AlignCenter', 'AlignRight', 'AlignJustify' ];
};


 // config.toolbarGroups = [
 //   name: 'alignment', groups : [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ] }
 //  ];
// $(function() {
//     CKEDITOR.config.extraPlugins = 'justify';
// });  