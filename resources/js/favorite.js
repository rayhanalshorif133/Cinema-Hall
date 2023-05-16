
$(document).on('click', ".checkmark", function () {
    // createCheckMark(this);
    var id = $(this).parent().attr('id');

    console.log("click", id);

    axios.post('/favorite/create/', {
        content_id: id,
    }).then(function (response) {
        const {
            msg,
            status
        } = response.data.data;
        var color1 = "#00b09b",
            color2 = "#96c93d";
        if (status == "added") {
            color1 = "#00b09b";
            color2 = "#96c93d";
        } else {
            color1 = "#ff5f6d";
            color2 = "#ffc371";
        }

        Toastify({
            text: msg,
            duration: 3000,
            newWindow: true,
            close: true,
            gravity: "top", // `top` or `bottom`
            position: "center", // `left`, `center` or `right`
            stopOnFocus: true, // Prevents dismissing of toast on hover
            style: {
                background: `linear-gradient(to right, ${color1}, ${color2})`,
            }
        }).showToast();

        setTimeout(() => {
            location.reload();
        }, 1000);

    }).catch(function (error) {
        console.log(error);
    });
});