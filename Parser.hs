module Parser where

import Scanner

data Exp = IExp Integer   |
           Var String     |
           Sum Exp Exp    |
           Diff Exp Exp   |
           Prod Exp Exp   |
           Quo Exp Exp    |
           Neg Exp        |
           Let ExpSeq Exp |
           ParseError String deriving (Eq, Show)

data ExpSeq = Seq [Binding] |
              ParseSeqError String deriving (Eq, Show)

data Binding = Bind String Exp |
               ParseBindError String deriving (Eq, Show)
