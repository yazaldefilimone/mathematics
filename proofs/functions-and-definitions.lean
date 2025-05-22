
def hello := "Hello, "

def lean := "Lean!"



def result := String.append hello lean



def sucess (n: Nat): Nat := n + 1

#eval sucess 10

def _max (y: Nat) (z: Nat):Nat :=
  if y > z then
    y
  else z


#eval _max 9 19



-- types

def stringType: Type := String


def name: stringType := "hello"



def NaturalNumber : Type := Nat
abbrev N : Type := Nat


def Num: NaturalNumber := (200:Nat)
def Num2 : N := 200
