$(function(){
  $(".top_header_product .row .thumbnail ").fixHeightSimple();
});

$(function(){
  $(".top_header_product .row .thumbnail ").fixHeightSimple({
    column : 3
  });
});

$(function(){
    $(".top_header_product .row .thumbnail").fixHeightSimple({
        responsive: true, 
        responsiveParent: ".items3" 
    });
});
