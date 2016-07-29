$(document).ready(function() {
  $("select").bind("change", function(){
    $(".btn-order").val("Order now - " + $("select option:selected").html());
  });
});
