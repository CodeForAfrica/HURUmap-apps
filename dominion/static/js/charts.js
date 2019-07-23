document.addEventListener("DOMContentLoaded", () => {
  const tableSelector = document.querySelector("#chart-table");
  const fields = JSON.parse(tableSelector.getAttribute('data-fields'));
  const chartypes = document.querySelector("#chart-type").options;
  let fieldSelected = 0;

  //hide groupBy option
  let groupBy = document.querySelector('#group_by');
  groupBy.style.display = 'none';

  const inputs = document.querySelectorAll('input[id^=chart-fields_]');
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
                     input.parentElement.style.display = 'contents';
                 } else {
                     input.checked = false;
                     input.parentElement.parentElement.style.display = 'none';
                 }
             });
         }
         const fieldCheckList = document.querySelector('#chart-fields');
         fieldCheckList.onchange = (e) => {
             fieldSelected = document.querySelectorAll('input[id^=chart-fields_]:checked');
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

                 //display group_by with the selected fields.
                 let groupByOptions = groupBy.options;
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
});
