var AnswerGroupAjax = (function() {
    // locally scoped Object
    var answerGroupAjax = {};
    // declared with `var`, must be "private"
    var useAnswerGroup = function (name, description, optionGroupId) {
        if (optionGroupId > 0 && name && name.length) {
            //var nameValue = name.val();
            //var descValue = null;
            //if (nameValue != null && description && description.length) {
            //    descValue = description.val();
            //}
            var data = {
                Id: answerGroupId,
                IsUsed: isUsed,
                SectionGroupId: optionGroupId,
                SurveyId: surveyId
            };
            $.ajax({
                    method: "POST",
                    url: "/AnswerGroups/EditAjax",
                    dataType: "html",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(data)
                })
                .success(function(response) {
                    var div = $("#partialViewDiv");
                    div.html("");
                    div.html(response);
                    $(".delete")
                        .unbind()
                        .click(function() {
                            OptionsAjax.deleteOption($(this), optionGroupId);
                        });
                });
        }

    };

    var populatePartial = function (answerGroupId) {
        $.ajax({
                method: "GET",
                cache: false,
                url: "/AnswerGroups/EditAjax",
                dataType: "HTML",
                data: { id: answerGroupId }
            })
            .done(function (response) {
                $('.partial').each(function (i, obj) {
                    $(this).html("");
                });
                var div = $("#partialViewAnswerGroup_" + answerGroupId);
                //div.html("");
                div.html(response);
            })
            .error(function (response) {
                alert("error " + answerGroupId);
                var div = $("#partialViewAnswerGroup_" + answerGroupId);
                div.html("");
                div.html(response);
            });
    };

    return {
        useAnswerGroup: useAnswerGroup,
        populateView: populatePartial
    };
})();