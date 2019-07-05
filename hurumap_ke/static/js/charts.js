document.addEventListener("DOMContentLoaded", () => {
    const select = document.getElementById('chart-table');
    const fields = JSON.parse(select.getAttribute('data-fields'));
    const chartypes= document.getElementById('chart-type').options;
    let fieldSelected = 0

    const inputs = document.querySelectorAll('input[id^=chart-table-field_]');
    [...inputs].forEach(input => {
        input.parentElement.parentElement.style.display = 'none';
    });

    select.onchange = (e) => {
        const tableName = select.options[select.selectedIndex].innerHTML;
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
        const fieldCheckList = document.getElementById('chart-table-field');
        fieldCheckList.onchange = (e) => {
            fieldSelected = document.querySelectorAll('input[id^=chart-table-field_]:checked').length;
            if(fieldSelected === 1 ) {
                [...chartypes].forEach(option => {
                    option.style.display = 'block';
                });
                chartypes.options[3].style.display = 'none';
            }
            else if(fieldSelected === 2) {
                [...chartypes].forEach(option => {
                    option.style.display = 'none';
                });
                chartypes.options[3].style.display = 'none';
            } else {
                [...chartypes].forEach(option => {
                    option.style.display = 'block';
                });
            }
        }

    };
});
