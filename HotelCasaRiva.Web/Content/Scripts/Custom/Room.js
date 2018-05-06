//$("#<%=txtUserName.ClientID%>")[0].value
$(document).ready(function () {
});

$(document).on('click', '.roomModal', function (event) {
    try {
        var roomID = $(this).attr("id");
        $.ajax({
            type: "POST",
            url: "Services/RoomService_web.asmx/RoomDetails",
            data: '{roomID: "' + roomID + '" }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                var data = JSON.parse(result.d);
                if (data != null && data.length > 0) {
                    $("#roomTitle").html(data[0][0].RoomType);
                    $("#roomSubTitle").html(data[0][0].RoomTitle);
                    $("#roomImage").attr("src", data[0][0].RoomImage);
                    $("#roomFeatures").empty();
                    for (i in data) {
                        var roomFeatureRow = $("<div class='row'></div>");
                        var roomFetureCategoryRow = $("<div class='row'></div>");
                        var roomCategoryCOl = $("<div class='col-md-12 col-sm-12 col-xs-12'></div>");
                        var roomCategoryDiv = $("<div class='feature-category'></div>");
                        var roomCategory = data[i][0].RoomDescCategory;
                        roomCategoryDiv.append(roomCategory);
                        roomCategoryCOl.append(roomCategoryDiv);
                        roomFetureCategoryRow.append(roomCategoryCOl);
                        $("#roomFeatures").append(roomFetureCategoryRow);
                        for (j in data[i]) {
                            var roomFeatureCol = $("<div class='col-md-4 col-sm-4 col-xs-4'></div>");
                            var roomFeatureTitleDiv = $("<div class='feature- title'></div>");
                            var roomFeatureTitle = data[i][j].RoomDescTitle;
                            roomFeatureTitleDiv.append(roomFeatureTitle);
                            roomFeatureCol.append(roomFeatureTitleDiv);
                            var roomDescription = data[i][j].RoomDesc;
                            var splitedDescriptions = roomDescription.split("&#32;");
                            for (k in splitedDescriptions) {
                                var roomFeatureDescriptionDiv = $("<div class='feature-description'></div>");
                                var roomDescription = splitedDescriptions[k];
                                roomFeatureDescriptionDiv.append(roomDescription);
                                roomFeatureCol.append(roomFeatureDescriptionDiv);
                                roomFeatureRow.append(roomFeatureCol);
                                $("#roomFeatures").append(roomFeatureRow);
                            }
                        }
                        $("#roomFeatures").append("<hr class='hr-line'/>");
                    }
                    $('#roomModal').modal('show');
                }
            },
            error: function (error) {
                console.log(".roomModal error function error : " + error);
            },
        });
    }
    catch (errorMsg) {
        console.log(".roomModal click function error : " + errorMsg);
    }
});