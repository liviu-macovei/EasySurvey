(function($) {
    //will update the table with the specific options of the selected optionGroup
    if (!window.addOption) {
        window.addOption = function() {
            var save = function(name, description, id) {
                if (id && id.length) {
                    var idValue = id.val();
                    if (id.val() != null && name && name.length) {
                        var nameValue = name.val();
                        var descValue = null;
                        if (nameValue != null && description && description.length) {
                            descValue = description.val();
                        }
                        var data = {
                            Name: nameValue,
                            Description: descValue,
                            OptionGroupId: idValue
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
                                        window.deleteOption().delete($(this), id);
                                    });
                            });
                    }
                }
            };

            return {
                save: save
            };
        };
    }
}(jQuery));