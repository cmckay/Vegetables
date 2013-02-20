$(document).ready(function(event) {
  $('select').change(function(event){
    _self = $(this);
    if (_self.val() == 'vegetable')
      _self.parent().addClass('compatible');
    else
      _self.parent().removeClass('compatible');
  });

  $('.plot-container div').hide();
  $('.plot-container div:first').show();
  $('.tab-nav li:first').addClass('tab-active');

  $('.tab-nav a').on('click', function(event) {
	  event.preventDefault();
	  $('.tab-nav li').removeClass('tab-active');
	  $(this).parent().addClass('tab-active');
	  $('.plot-container div').hide();
	  $($(this).attr('href')).show();
	});

});


$('header')
$('.bubble')
$('#container')
