<employees-table>
  <table class="employees-table">
    <thead>
    <tr class="employees-table__header">
      <th class="employees-table__cell employees-table__cell_header">
        <input type="checkbox">
      </th>
      <th class="employees-table__cell employees-table__cell_header js-table-header" data-col="name" onclick={sort}>Полное имя</th>
      <th class="employees-table__cell employees-table__cell_header js-table-header" data-col="domain" onclick={sort}>Учетная запись
      </th>
      <th class="employees-table__cell employees-table__cell_header js-table-header" data-col="email" onclick={sort}>Электронная почта
      </th>
      <th class="employees-table__cell employees-table__cell_header js-table-header" data-col="position" onclick={sort}>Группа</th>
      <th class="employees-table__cell employees-table__cell_header js-table-header" data-col="phone" onclick={sort}>Номер телефона</th>
    </tr>
    </thead>
    <tbody>
    <tr each={ opts.items } class={on-chosen: chosen}>
      <td class="employees-table__cell employees-table__cell_header">
        <input type="checkbox" onchange={check}>
      </td>
      <td class="employees-table__cell">{name}</td>
      <td class="employees-table__cell">{domain}</td>
      <td class="employees-table__cell">{email}</td>
      <td class="employees-table__cell">{position}</td>
      <td class="employees-table__cell">{phone}</td>
    </tr>
    </tbody>
  </table>

  <script>
    this.sort = function (e) {
      let el = e.target;
      let prevActive = this.root.querySelector('.js-table-header.is-active');

      if(prevActive && prevActive !== e.target){
        prevActive.classList.remove('is-active');
      }

      el.classList.add("is-active");
      opts.handlesort(el.getAttribute('data-col'));
    };

    this.check = function (e) {
      e.item.chosen = !e.item.chosen;
    }
  </script>
</employees-table>