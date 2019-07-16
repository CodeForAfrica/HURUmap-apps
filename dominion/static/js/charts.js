document.addEventListener("DOMContentLoaded", () => {
    const chartInline = document.querySelectorAll('div.inline-group div.inline-related > fieldset');
    const addChart = document.querySelector('div.inline-group div.add-row');

    addChart.addEventListener("click", () => {
        const fieldSets = document.querySelectorAll('div.inline-group div.inline-related > fieldset');
        const newInline = fieldSets[fieldSets.length -2];
        chartManipulation(newInline);
    });

    [...chartInline].forEach(chartFieldline => {
        chartManipulation(chartFieldline);
    });

    function chartManipulation(inline) {
        const tableSelector = inline.querySelector("#chart-table");
        const fields = JSON.parse(tableSelector.getAttribute('data-fields'));
        const chartypes = inline.querySelector("#chart-type").options;
        let fieldSelected = 0;

        //hide groupBy option
        let groupBy = inline.querySelector('.field-group_by');
        groupBy.style.display = 'none';

        const inputs = inline.querySelectorAll('input[id^=chart-table-field_]');
        [...inputs].forEach(input => {
            input.parentElement.parentElement.style.display = 'none';
        });

        // const groupByInputs = inline.querySelectorAll('input[id^=group_by_]');
        // [...groupByInputs].forEach(groupByInput => {
        //     groupByInput.parentElement.parentElement.style.display = 'none';
        // });

        tableSelector.onchange = (e) => {
            const tableName = tableSelector.options[tableSelector.selectedIndex].innerHTML;
            const found = fields.find(f => f.name.toLowerCase() === tableName);
            if (found) {
                const validFields = found.fields;
                [...inputs].forEach(input => {
                    if (validFields.indexOf(input.value) !== -1) {
                        input.parentElement.parentElement.style.display = 'block';
                    } else {
                        input.checked = false;
                        input.parentElement.parentElement.style.display = 'none';
                    }
                });
            }
            const fieldCheckList = inline.querySelector('#chart-table-field');
            fieldCheckList.onchange = (e) => {
                fieldSelected = inline.querySelectorAll('input[id^=chart-table-field_]:checked');
                numFieldSelected = fieldSelected.length;
                if(numFieldSelected === 1 ) {
                    [...chartypes].forEach(option => {
                        option.style.display = 'block';
                    });
                    chartypes[4].style.display = 'none';
                }
                //if two fields are selected, hide single field charts
                else if(numFieldSelected === 2) {
                    [...chartypes].forEach(option => {
                        option.style.display = 'none';
                    });
                    chartypes[4].style.display = 'block';

                    //populate group_by with the selected fields.
                    let groupByOptions = inline.querySelector('#group_by').options;
                    let selectedfields = [];
                    [...fieldSelected].forEach(field => {
                      selectedfields.push(field.value);
                    });
                    [...groupByOptions].forEach(groupByOption => {
                        if (selectedfields.indexOf(groupByOption.value) === -1) {
                          groupByOption.style.display = 'none';
                        } else {
                          groupByOption.selected = "selected";
                        }
                    });
                    groupBy.style.display = 'block';

                } else {
                    [...chartypes].forEach(option => {
                        option.style.display = 'block';
                    });
                }
            }

        };
    }

});
