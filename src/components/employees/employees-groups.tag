<employees-groups>
  <div class="employees-groups">
    <div class="employees-groups__container">
      <div class="employees-groups__item" each={group, i in groupsEmployees}>
        <div class="employees-group">
          <div class="employees-group__header">
            <span class="employees-group__cell employees-group__cell_name">{i}</span>
            <div class="employees-group__cell">
              <span class="employees-group__marker"></span>
              <span class="employees-group__marker"></span>
            </div>
          </div>

          <ul class="employees-group__list">
            <li class="employees-group__item" each={group}>
              <div class="employees-group__item-row">
                <span class="employees-group__item-name">{name}</span>
              </div>
              <div class="employees-group__item-row">
                <span class="employees-group__cell">{position}</span>
                <div class="employees-group__cell">
                  <span class="employees-group__marker"></span>
                  <span class="employees-group__marker"></span>
                </div>
              </div>
            </li>
          </ul>

          <div class="employees-group__footer">
            <span class="employees-group__footer-txt">Добавить пользователя...</span>
          </div>
        </div>
      </div>

      <div class="employees-groups__item">
        <div class="employees-group">
          <div class="employees-group__footer">
            <span class="employees-group__footer-txt">Добавить группу...</span>
          </div>
        </div>
      </div>
    </div>
  </div>


  <script>
    this.on('update', function () {
      this.groupsEmployees = {};

      opts.items.forEach(el => {
        let groupsEmployees = this.groupsEmployees;

        groupsEmployees[el.position] = groupsEmployees[el.position] ? groupsEmployees[el.position] : [];
        groupsEmployees[el.position].push(el);
      });
    });
  </script>
</employees-groups>