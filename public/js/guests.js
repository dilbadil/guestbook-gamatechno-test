function updateStatus(guestId, theButton) {
    var theButton = $(theButton);

    $.ajax({
      url: "/guests/status/" + guestId,
      method: "POST",
      success: SuccessHandler,
    });

    function SuccessHandler(resp) {
        if (! resp.error) {
            var guest = resp.guest;

            theButton.text(guest.hadir ? 'Absen' : 'Hadir');

            theButton.removeClass('btn-success');
            theButton.removeClass('btn-warning');

            theButton.addClass( guest.hadir ? 'btn-warning' : 'btn-success' );
        }
    }
}

function addGuest() {
    $( "#add-guest-dialog" ).dialog();
}

function doAddGuest() {
    var newNama =  $('#add-guest-input-nama').val();
    var newInstitusi =  $('#add-guest-input-institusi').val();
    var data = {};

    data.nama = newNama;
    data.institusi = newInstitusi;

    $.ajax({
      url: "/guests/",
      method: "POST",
      data: data,
      success: SuccessHandler,
    });

    function SuccessHandler(resp) {
        var content = "";
        var guest;

        if (! resp.error) {
            guest = resp.guest;
            content += [
                    "<tr>",
                    "<td>"+ guest.nama +"</td>",
                    "<td>"+ guest.institusi +"</td>",
                    "<td>",
                        '<button id="button-updatestatus" onclick="updateStatus('+ guest.id +', this)" type="button" class="btn btn-success">Hadir</button>',
                        '<button type="button" class="btn btn-default">Edit</button>',
                    "</td>",
                ].join('');

            $('#table-guests tbody').prepend(content);
        } else {
        }

        $('#add-guest-input-nama').val('');
        $('#add-guest-input-institusi').val('');
        $('.ui-dialog-titlebar-close').click();
        
    }
}
