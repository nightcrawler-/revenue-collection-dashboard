jQuery(function () {

    var cost = 'Ksh. 0.00'
    var revenue_items;
    var current_ward_id;
    var current_sub_id;

    function processDataFunction(data) {
        revenue_items = data.items
        console.log(revenue_items)

        var options = $('#service_options')
        options.empty() //empty the items if already present to avoid duplicates

        if (revenue_items != null) {


            //populate lists
            jQuery.each(revenue_items, function (i, item) {
                options.append($("<option />").val(item.id)
                    .text(item.revenue_stream.name + ", " + item.revenue_units.name + ", KSh. " + item.amount));
            })
        } else {
            options.append($("<option />").val(0)
                .text("Unavailable"));
        }

        populateCost();

    }

    function populateCost() {
        if (revenue_items != null) {

            var split_cost = $('#service_options option:selected').text().split(",")
            cost = split_cost[split_cost.length - 1]
            $('#cost').text(cost)
            $('#amount').val(cost.replace("KSh.", "").trim())

        }
    }


    $("#example-form").change(function () {
        var ward_id = $("#payment_ward_id").val();
        var sub_id = $("#payment_revenue_subgroup_id").val();


        if (ward_id != null && sub_id != null && ((current_sub_id != sub_id) || (current_ward_id != ward_id))) {

            console.log('ward: ' + ward_id + ' sub_id: ' + sub_id);

            $.ajax({
                type: "GET",
                dataType: "json",
                url: "/payment/filter",
                data: {ward_id: ward_id, sub_id: sub_id},
                success: 1
            }).done(function (data) {
                processDataFunction(data)
            })

        } else {
            populateCost()
        }

        //do this assignment after all ahs eben done
        current_sub_id = sub_id
        current_ward_id = ward_id//checks to avaid loading each time the form changes for same data

    });
})