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

        const inputs = inline.querySelectorAll('input[id^=chart-table-field_]');
        [...inputs].forEach(input => {
            input.parentElement.parentElement.style.display = 'none';
        });

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
                    let groupBy = inline.querySelector('#group_by');
                    [...fieldSelected].forEach(field => {
                      let grouByOption = document.createElement("option");
                      grouByOption.text = field.value;
                      grouByOption.value = field.value;
                      groupBy.appendChild(grouByOption);
                    });

                } else {
                    [...chartypes].forEach(option => {
                        option.style.display = 'block';
                    });
                }
            }

        };
    }

});
