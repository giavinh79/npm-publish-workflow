export const areNumbersEqual = (a: number, b: number): boolean => {
  return a === b;
}

export const getSum = (numbers: number[]) => {
  return numbers.reduce((acc, num) => {
    return acc + num;
  }, 0)
}