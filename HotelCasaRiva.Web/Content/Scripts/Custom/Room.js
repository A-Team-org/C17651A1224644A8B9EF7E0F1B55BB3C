//$("#<%=txtUserName.ClientID%>")[0].value
$(document).ready(function () {
});

$(document).on('click', '.roomModal', function (event) {
    try {
        var roomID = $(this).attr("id");
        $.ajax({
            type: "POST",
            url: "Rooms.aspx/RoomDetails",
            data: '{roomID: "' + roomID + '" }',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                if (result != null && result != "") {
                    var data = JSON.parse(result.d);
                    $("#roomTitle").html(data[0][0].roomType);
                    $("#roomFeatures").empty();
                    var roomFeatureRow = $("<div class='row'></div>");
                    for (i in data){
                        var roomFetureCategoryRow = $("<div class='row'></div>");
                        var roomCategoryCOl = $("<div class='col-md-12 col-sm-12 col-xs-12'></div>");
                        var roomCategoryDiv = $("<div class='feature-category'></div>");
                        var roomCategory = data[i][0].roomDescCategory;
                        roomCategoryDiv.append(roomCategory);
                        roomCategoryCOl.append(roomCategoryDiv);
                        roomFetureCategoryRow.append(roomCategoryCOl);
                        $("#roomFeatures").append(roomFetureCategoryRow);
                        for(j in data[i]){
                            var roomFeatureCol = $("<div class='col-md-4 col-sm-4 col-xs-4'></div>");
                            var roomFeatureTitleDiv = $("<div class='feature- title'></div>");
                            var roomFeatureTitle = data[i][j].roomDescTitle;
                            roomFeatureTitleDiv.append(roomFeatureTitle);
                            roomFeatureCol.append(roomFeatureTitleDiv);
                            for (k in data[i][j].roomDesc){
                                var roomFeatureDescriptionDiv = $("<div class='feature-description'>Test</div>");
                                var roomDescription = data[i][j].roomDesc[k];
                                roomFeatureDescriptionDiv.append(roomDescription);
                                roomFeatureCol.append(roomFeatureDescriptionDiv);
                                roomFeatureRow.append(roomFeatureCol);
                                $("#roomFeatures").append(roomFeatureRow);
                            }
                        }
                        $("#roomFeatures").append("<hr class='hr-line'/>");
                    }
                }
                $('#roomModal').modal('show');
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