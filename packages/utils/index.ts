export const areNumbersEqual = (a: number, b: number) => {
  return a === b;
}

export const getSum = (numbers: number[]): number => {
  return numbers.reduce((acc, num) => {
    return acc + num;
  }, 0)
}