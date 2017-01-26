$(document).ready(function() {
  
  $("select").bind("change", function(){
    $(".btn-order").html("Order now - " + $("select option:selected").html());
  });

});
