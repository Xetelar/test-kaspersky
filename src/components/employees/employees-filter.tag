<employees-filter>
  <div class="employees-filter">
    <label>
      <span class="employees-filter__title">
        Фильтр
      </span>
      <input class="employees-filter__search" type="text" onkeyup={filter} placeholder="Фильтр по имени"/>
    </label>
  </div>


  <script>
    this.filter = function (e) {
      opts.handlefilter(e.target.value);
    }
  </script>
</employees-filter>