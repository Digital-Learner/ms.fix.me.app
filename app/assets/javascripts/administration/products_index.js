$('document').ready(function() {
  $("select").change(function() {
    $.ajax({
      url: "#{administration_products_path}",
      data: {
        published_status: $("#product_published_status option:selected").val()
      },
      dataType: "script"
    });
  });
});
