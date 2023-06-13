function equalPairs(grid: number[][]): number {
  let count = 0;
  const n = grid.length;

  // Keep track of the frequency of each row.
  const rowCounter: { [key: string]: number } = {};
  for (const row of grid) {
    const rowString = JSON.stringify(row);
    rowCounter[rowString] = 1 + (rowCounter[rowString] ?? 0);
  }

  // Add up the frequency of each column in the map.
  for (let c = 0; c < n; c++) {
    const colArray: number[] = [];
    for (let r = 0; r < n; ++r) {
      colArray[r] = grid[r][c];
    }
    count += rowCounter[JSON.stringify(colArray)] ?? 0;
  }

  return count;
};