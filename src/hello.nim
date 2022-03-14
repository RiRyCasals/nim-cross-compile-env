proc hello(word: string): string = 
  return "Hello, " & word

when isMainModule:
  echo hello("Nim cross compile world!")
