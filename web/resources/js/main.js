$('.dropdown.clickable a').on('click', function (e) {
    e.preventDefault();
    var target = $(this).data('target');
    var value = $(this).data('id');
    var btn = $(this).data('btn');
    $('#' + target).val(value);
    $('#' + btn).html($(this).text() + '<span class="caret"></span>');
});

$('.email-grades-btn').on('click', function (e) {
    e.preventDefault();
    var url = $(this).attr('href');
    console.log(url);
    $.get(url, function (data) {
        alert("Email has been sent to student.");
    });
});


