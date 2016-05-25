var CommentsAjax = (function() {
    // locally scoped Object
    var commentsAjax = {};

    // declared with `var`, must be "private"
    var addCommentAjax = function (comment, surveyId) {
        if (surveyId > 0 && comment && comment.length) {
            var data = {
                Description: comment,
                SurveyId: surveyId
            };
            $.ajax({
                method: "POST",
                url: "/Comments/AddAjax",
                dataType: "html",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(data)
            })
                .success(function (response) {
                    var div = $("#partialViewDiv");
                    div.html("");
                    div.html(response);
                    $(".delete")
                        .unbind()
                        .click(function () {
                            CommentsAjax.deleteComment($(this), surveyId);
                        });
                })
                .error(function (response) {
                    alert("error " + answerGroupId);
                });
        }

    };

    var deleteCommentById = function (commentObject, surveyId) {
        if (surveyId > 0 && commentObject && commentObject.length) {
            var value = commentObject.attr("value");
            $.ajax({
                    method: "DELETE",
                    cache: false,
                    url: "/Comments/DeleteAjax",
                    dataType: "HTML",
                    data: {
                        id: value,
                        surveyId: surveyId
                    }
                })
                .done(function (response) {
                    var div = $("#partialViewDiv");
                    div.html("");
                    div.html(response);
                    $(".delete")
                        .unbind()
                        .click(function() {
                            CommentsAjax.deleteComment($(this), surveyId);
                        });
                });
        }
    };

    var populatePartial = function (surveyId) {
        $.ajax({
                method: "GET",
                cache: false,
                url: "/Comments/Comments",
                dataType: "HTML",
                data: { surveyId: surveyId }
            })
            .done(function (response) {
                var div = $("#partialViewDiv");
                div.html("");
                div.html(response);
                $(".delete")
                    .unbind()
                    .click(function() {
                        CommentsAjax.deleteComment($(this), surveyId);
                    });
            });
    };

    return {
        addComment: addCommentAjax,
        deleteComment: deleteCommentById,
        populateView: populatePartial
    };
})();