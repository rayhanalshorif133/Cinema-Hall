const errorToast = (message) => {
    Toastify({
        text: message?  message: "Something went wrong",
        duration: 3000,
        newWindow: true,
        close: true,
        gravity: "top", // `top` or `bottom`
        position: "center", // `left`, `center` or `right`
        stopOnFocus: true, // Prevents dismissing of toast on hover
        style: {
            background: `linear-gradient(to right, #ff5f6d, #ffc371)`,
        }
    }).showToast();
};

$(document).on('click', "input[name='rating']", function () {
    const rating = $(this).val();
    const contentId = $(this).parent().parent().parent().attr('id').split('-')[1];
    axios.post('/rating/create', {
        rating: rating,
        contentId: contentId
    }).then(function (response) {
        const {status, message} = response.data;
        if(status === true ){
            Toastify({
                text: message,
                duration: 3000,
                newWindow: true,
                close: true,
                gravity: "top", // `top` or `bottom`
                position: "center", // `left`, `center` or `right`
                stopOnFocus: true, // Prevents dismissing of toast on hover
                style: {
                    color: "#000000",
                    background: `linear-gradient(to right, #00F9FF, #00E0E6)`,
                }
            }).showToast();
        }else{
            errorToast(message);
        }
    });

});