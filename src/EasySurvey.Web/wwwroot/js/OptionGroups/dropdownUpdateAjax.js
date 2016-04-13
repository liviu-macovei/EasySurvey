(function($) {
    //will update the table with the specific options of the selected optionGroup
    if (!window.dropdownUpdate) {
        window.dropdownUpdate = function() {
            var populatePartial = function(dropDown) {
                if (dropDown && dropDown.length) {
                    var value = dropDown.val();
                    $.ajax({
                            method: "GET",
                            cache: false,
                            url: "/OptionGroups/Options",
                            dataType: "HTML",
                            data: { selectedValue: value }
                        })
                        .done(function(response) {
                            var div = $("#partialViewDiv");
                            div.html("");
                            div.html(response);
                            $(".delete")
                                .click(function() {
                                    window.deleteOption().delete($(this), dropDown);
                                });
                        });
                }
            };

            return {
                populateView: populatePartial
            };
        };
    }
}(jQuery));