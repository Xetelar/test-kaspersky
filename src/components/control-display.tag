<control-display>
  <div class="control-display">
    <div class="control-display__btn" each={ opts.displays } onclick={show}>{text}</div>
  </div>

  <script>
    this.show = function (e) {
      opts.handleshow(e.item.name);
    }
  </script>
</control-display>