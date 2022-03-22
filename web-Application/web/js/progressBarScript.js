$(document).ready(function() {
    var options = {
        beforeSend: function() {
            $("#progressbox").show();
            $("#pBar").html('0%');
            $("#pBar").css("width", "0%");
            $("#message").empty();
        },
        uploadProgress: function(event, position, total, percentComplete) {
            $("#pBar").html(percentComplete + "%");
            $("#pBar").css("width", percentComplete + "%");
            if (percentComplete > 50) {
                $("#message").html("File upload is in progress...");
                $("#message").addClass("alert alert-warning");
            }
        },
        success: function() {
            $("#pBar").html("100%");
            $("#pBar").width("100%");
            $("#pBar").removeClass("active");
        },
        complete: function(response) {
            $("#message").html("Your file is uploaded!!");
            $("#message").removeClass("alert-warning");
            $("#message").addClass("alert-success");
        },
        error: function() {
            $("#message").html("Error: Unable to upload file");
        }

    };

    $("#uploadForm").ajaxForm(options);
});

