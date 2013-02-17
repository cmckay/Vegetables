$(document).ready(function(event) {
  $('select').change(function(event){
    _self = $(this);
    if (_self.val() == 'vegetable')
      _self.parent().addClass('compatible');
    else
      _self.parent().removeClass('compatible');
  });
});


$('header')
$('.bubble')
$('#container')
