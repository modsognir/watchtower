// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  $('.dialog').jqm();

  $('[data-form]').each(function(index, ele) {
    $('#' + $(ele).data('form') + '.dialog').jqmAddTrigger($('[data-form=' + $(ele).data('form') + ']'));
  });
});