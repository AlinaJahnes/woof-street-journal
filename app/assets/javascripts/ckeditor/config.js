CKEDITOR.editorConfig = function (config) {
  config.extraPlugins = 'youtube';

  config.toolbar_mini = [
    ["Source"],
    ["Bold", "Italic", "Subscript", "Superscript"], 
    ["Image", "Youtube","Smiley", "Link", "Unlink"],
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']
  ];
  config.toolbar = "mini";
  config.filebrowserImageBrowseUrl = '/ckeditor/pictures';
  config.filebrowserImageUploadUrl = '/ckeditor/pictures';
  config.language = 'en';
  config.uiColor = '#BCD8E6';

};