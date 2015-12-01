$(document).ready(function() {

$(".out").click(function() {
    $(this).delete(@current_user.id);
  });


});
