document.addEventListener("DOMContentLoaded", () => {
    const select = document.getElementById('chart-table');
    const fields = JSON.parse(select.getAttribute('data-fields'));


    const inputs = document.querySelectorAll('input[id^=chart-table-field_]');
    [...inputs].forEach(input => {
        console.log(input)
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
    };
});
