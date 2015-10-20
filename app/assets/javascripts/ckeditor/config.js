CKEDITOR.editorConfig = function (config) {

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline", "Subscript",  "Superscript"], 
    ["Image", "Smiley", "Link", "Unlink"],
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
  ];
  config.toolbar = "mini";
  config.filebrowserImageBrowseUrl = '/ckeditor/pictures';
  config.filebrowserImageUploadUrl = '/ckeditor/pictures';
};