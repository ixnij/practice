function get_num (x) {
  return x == 0 ? 1 : x * get_num (x - 1);
}

console.log (get_num (5));
