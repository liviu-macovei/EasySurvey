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
                        $.ajax({
                                method: "GET",
                                cache: false,
                                url: "/Option/AddAjax",
                                dataType: "HTML",
                                data: { name: nameValue, description: descValue, id: idValue }
                            })
                            .done(function(response) {
                                var div = $("#partialViewDiv");
                                div.html("");
                                div.html(response);
                                $(".delete").unbind()
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