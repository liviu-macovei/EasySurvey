(function($) {
    //will update the table with the specific options of the selected optionGroup
    if (!window.deleteOption) {
        window.deleteOption = function() {
            var deleteOptionById = function(id, optionGroupId) {
                if (optionGroupId && optionGroupId.length) {
                    var optionGroupIdValue = optionGroupId.val();
                    if (optionGroupIdValue != null && id && id.length) {                   
                        var value = id.attr("value");
                        $.ajax({
                                method: "POST",
                                cache: false,
                                url: "/Option/DeleteAjax",
                                dataType: "HTML",
                                data: {
                                    id: value,
                                    optionGroupId: optionGroupIdValue
                                }
                            })
                            .done(function(response) { 
                                var div = $("#partialViewDiv");
                                div.html("");
                                div.html(response);

                            });
                    }
                }
            };

            return {
                delete: deleteOptionById
            };
        };
    }
}(jQuery));