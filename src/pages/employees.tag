import '../components/employees/employees-table.tag';
import '../components/employees/employees-blocks.tag';
import '../components/employees/employees-groups.tag';
import '../components/employees/employees-filter.tag';
import '../components/control-display.tag';
import utils from '../utils/base.js';

<employees>
  <div class="employees">
    <div class="employees__row">
      <div class="employees__cell employees__cell_2">
        <employees-filter handleFilter={handleFilter.bind(this)}/>
      </div>
      <div class="employees__cell employees__cell_2">
        <control-display displays={displays} handleShow={ handleShow.bind(this) }/>
      </div>
    </div>
    <div class="employees__row">
      <div class="employees__cell">
        <employees-table show={display=='table'} items={employees} handleSort="{handleSort.bind(this)}"/>
        <employees-blocks show={display=='blocks'} items={employees}/>
          <employees-groups show={display=='groups'} items={employees}/>
      </div>
    </div>
  </div>


  <script>
    let currentDisplay = 'table';

    this.employees = opts.employees.slice();
    this.displays = [
      {name: 'table', text: 'Таблицей'},
      {name: 'blocks', text: 'Блоками'},
      {name: 'groups', text: 'По группам'}
    ];
    this.display = currentDisplay;


    this.handleShow = function (display) {
      this.display = display;
      this.update();
    };

    this.handleFilter = function (searchText) {
      clearTimeout(this.timerFilter);
      this.timerFilter = setTimeout(() => {
        this.employees = opts.employees.slice().filter(el => {
          return el.name.indexOf(searchText) !== -1;
        });
        this.update();
      }, 300);
    };

    this.handleSort = function (col) {
      utils.sortArray(this.employees, col);
      this.update();
    };
  </script>
</employees>