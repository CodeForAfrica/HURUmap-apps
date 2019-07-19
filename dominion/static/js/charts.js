document.addEventListener("DOMContentLoaded", () => {
    const addChart = document.querySelector('#id_charts-ADD');

    addChart.addEventListener("click", () => {
        //if add chart is clicked 
        //work with the recent added chart form in the cluster
        const fieldSets = document.querySelectorAll('li[id^=inline_child_charts-] > fieldset');
        const newInline = fieldSets[fieldSets.length -1];
        chartManipulation(newInline, fieldSets.length -1);
    });


    function chartManipulation(inline, index) {
        const tableSelector = inline.querySelector(`#id_charts-${index}-table`);
        const chartfields = inline.querySelector(`#id_charts-${index}-fields`);
        
        const fields = window.fieldtables;
        const chartypes = inline.querySelector(`#id_charts-${index}-chart_type`).options;
        let fieldSelected = 0;

        //hide groupBy option
        let groupBy = inline.querySelector(`#id_charts-${index}-group_by`);
        groupBy.style.display = 'none';

        tableSelector.onchange = (e) => {
            const tableName = tableSelector.options[tableSelector.selectedIndex].value;
            console.log(tableName);
            chartfields.innerHTML = '';
            const found = fields.find(f => f.name.toLowerCase() === tableName);
            if (found) {
                const validFields = found.fields;
                //remove all current fields
                [...validFields].forEach((item, i) => {
                    const listItem = document.createElement("li");
                    listItem.style.lineHeight = 3;
                    const listLabel = document.createElement("label");
                    listLabel.style.display = 'contents';
                    const label = document.createTextNode(item);

                    var itemInput = document.createElement("input");
                    itemInput.type = "checkbox";
                    itemInput.id = `charts-${index}-fields_${i}`;
                    itemInput.value = item;

                    listLabel.appendChild(itemInput);
                    listLabel.appendChild(label);
                    listItem.appendChild(listLabel);
                    chartfields.appendChild(listItem);
                });
            }

            chartfields.onchange = (e) => {
                fieldSelected = inline.querySelectorAll(`input[id^=charts-${index}-fields_]:checked`);
                numFieldSelected = fieldSelected.length;
                groupBy.innerHTML = '';
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
                    let groupByOptions = groupBy.options;
                    let selectedfields = [];
                    [...fieldSelected].forEach(field => {
                      selectedfields.push(field.value);
                    });

                    [...selectedfields].forEach( selectedField => {
                        const optionItem = document.createElement("option");
                        optionItem.value = selectedField;
                        optionItem.text = selectedField;
                        groupBy.appendChild(optionItem);
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
