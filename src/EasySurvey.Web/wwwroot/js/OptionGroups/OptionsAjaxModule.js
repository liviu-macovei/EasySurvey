var OptionsAjax = (function() {
    // locally scoped Object
    var optionsAjax = {};

    // declared with `var`, must be "private"
    var addOptionAjax = function(name, description, optionGroupId) {
        if (optionGroupId > 0 && name && name.length) {
            var nameValue = name.val();
            var descValue = null;
            if (nameValue != null && description && description.length) {
                descValue = description.val();
            }
            var data = {
                Name: nameValue,
                Description: descValue,
                OptionGroupId: optionGroupId
            };
            $.ajax({
                    method: "POST",
                    url: "/Option/AddAjax",
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

    var deleteOptionById = function(optionObject, optionGroupId) {

        if (optionGroupId > 0 && optionObject && optionObject.length) {
            var value = optionObject.attr("value");
            $.ajax({
                    method: "DELETE",
                    cache: false,
                    url: "/Option/DeleteAjax",
                    dataType: "HTML",
                    data: {
                        id: value,
                        optionGroupId: optionGroupId
                    }
                })
                .done(function(response) {
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

    var populatePartial = function(optionGroupId) {
        $.ajax({
                method: "GET",
                cache: false,
                url: "/OptionGroups/Options",
                dataType: "HTML",
                data: { selectedValue: optionGroupId }
            })
            .done(function(response) {
                var div = $("#partialViewDiv");
                div.html("");
                div.html(response);
                $(".delete")
                    .unbind()
                    .click(function() {
                        OptionsAjax.deleteOption($(this), optionGroupId);
                    });
            });
    };

    return {
        addOption: addOptionAjax,
        deleteOption: deleteOptionById,
        populateView: populatePartial
    };
})();