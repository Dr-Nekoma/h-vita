{-# LANGUAGE OverloadedStrings #-}

module Parser where

import Types
import Text.Megaparsec ( Parsec, many, optional )
import Text.Megaparsec.Char
import Data.Void
import Data.Text
import Text.Megaparsec.Char.Lexer (decimal, signed)

type Parser = Parsec Void Text

parseLife :: Parser [Location]
parseLife = header *> many position

header :: Parser Text
header = string "#Life 1.06" *> eol

position :: Parser Location
position = (,) <$> (signed space decimal <* space) <*> (signed space decimal <* optional eol)