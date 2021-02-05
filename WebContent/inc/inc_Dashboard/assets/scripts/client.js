/**
 * 
 */

$("#searchinput").on("keyup", function() {
  var value = $(this).val().toLowerCase();
  $("#cardDiv .col-lg-4").filter(function() {
    $(this).toggle($(this).find('.card-bodys').text().toLowerCase().indexOf(value) > -1)
  });
});