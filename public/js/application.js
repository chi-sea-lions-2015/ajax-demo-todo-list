$(document).ready(function() {
  $("#new_item").submit(function(e){
    e.preventDefault();

    var form = $(this);
    var request = $.ajax({
      method: form.attr('method'),
      url: form.attr('action'),
      data: form.serialize()
    });

    request.done(function(response) {
      $("#todo-list").append(response);
      form[0].reset();
    });
  });
});
