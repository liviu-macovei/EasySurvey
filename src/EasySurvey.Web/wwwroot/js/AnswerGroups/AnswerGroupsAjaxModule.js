var AnswerGroupAjax = (function() {
    // locally scoped Object
    var answerGroupAjax = {};
    // declared with `var`, must be "private"
    var useAnswerGroup = function (isUsed, answerGroupId, sectionGroupId, surveyId) {
        
        if (answerGroupId > 0 && sectionGroupId > 0 && surveyId > 0) {
            var data = {
                Id: answerGroupId,
                IsUsed: isUsed,
                SectionGroupId: sectionGroupId,
                SurveyId: surveyId
            };
            $.ajax({
                method: "POST",
                url: "/AnswerGroups/EditAjax",
                dataType: "html",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(data)
            })
            .success(function (response) {
                var div = $("#partialViewAnswerGroup_" + sectionGroupId);
                div.html("");
                div.html(response);
            });
        }
    };

    var extendAnswerGroup = function (answerGroupId, sectionGroupId, surveyId) {
        if (answerGroupId > 0 && sectionGroupId > 0 && surveyId > 0) {
            var data = {
                Id: answerGroupId,
                SectionGroupId: sectionGroupId,
                SurveyId: surveyId
            };
            $.ajax({
                method: "POST",
                url: "/AnswerGroups/ExtendAjax",
                //dataType: "html",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(data)
            })
            //.success(function (response) {
            //    alert("success!");
            //    var div = $("#partialViewAnswerGroup_" + answerGroupId);
            //    div.html("");
            //    div.html(response);
            //});
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
                $('#partialViewAnswerGroup_' + answerGroupId).each(function (i, obj) {
                    $(this).html("");
                });
                var div = $("#partialViewAnswerGroup_" + answerGroupId);
                div.html(response);
            })
            .error(function (response) {
                alert("error " + answerGroupId);
                var div = $("#partialViewAnswerGroup_" + answerGroupId);
                div.html("");
                div.html(response);
            });
    };

    var populateAnswerGroupsPartial = function (surveyId, sectionGroupId) {
        $.ajax({
            method: "GET",
            cache: false,
            url: "/AnswerGroups/EditAnswerGroupsAjax",
            dataType: "HTML",
            data: { surveyId: surveyId, sectionGroupId: sectionGroupId }
        })
            .done(function (response) {
                var div = $("#partialViewAnswerGroup_" + sectionGroupId);
                div.html("");
                div.html(response);
                //$('#partialViewAnswerGroup_' + sectionGroupId).each(function (i, obj) {
                //    $(this).html("");
                //});
                //var div = $("#partialViewAnswerGroup_" + sectionGroupId);
                //div.html(response);
            })
            .error(function (response) {
                alert("error " + sectionGroupId);
                var div = $("#partialViewAnswerGroup_" + sectionGroupId);
                div.html("");
                div.html(response);
            });
    };

    return {
        useAnswerGroup: useAnswerGroup,
        populateView: populatePartial,
        populateAnswerGroupsView: populateAnswerGroupsPartial,
        extendAnswerGroup: extendAnswerGroup
    };
})();