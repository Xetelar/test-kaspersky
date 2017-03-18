<employees-blocks class="employees-blocks">
  <div class="employees-blocks__container">
    <div class="employees-blocks__item" each={opts.items}>
      <div class="employees-block {on-chosen: chosen}">
        <div class="employees-block__item employees-block__item_cloud">
          <div class="employees-block__cloud-cell">
            <input type="checkbox" onchange={check}>
          </div>
          <div class="employees-block__cloud-cell">
            <img  src="/data/images/cloud.png" alt="cloud">
          </div>
        </div>
        <span class="employees-block__item employees-block__item_name">{name}</span>
        <div class="employees-block__item">
          <img src="/data/images/man.png" alt="photo">
        </div>
        <span class="employees-block__item">{position}</span>
        <span class="employees-block__item">{phone}</span>
      </div>
    </div>
  </div>

  <script>
    this.check = function (e) {
      e.item.chosen = !e.item.chosen;
    }
  </script>
</employees-blocks>