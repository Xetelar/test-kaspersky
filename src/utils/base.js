function utils() {
  return {
    sortArray(arr, col) {
      let compare = function (a, b) {
        return a[col] > b[col] ? 1 : -1;
      };

      return arr.sort(compare);
    }
  }
}

export default utils();