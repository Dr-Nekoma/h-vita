module Options where

import Options.Applicative

data Options = Options {
    file :: FilePath,
    rows :: Int,
    cols :: Int
}

parseOptions :: ParserInfo Options
parseOptions = info
    (helper <*> (
        Options
        <$> strOption (
            long "file"
            <> short 'f'
            <> metavar "FILE"
            <> help "File path"
        )
        <*> option auto (
            long "rows"
            <> short 'r'
            <> help "Number of rows"
        )
        <*> option auto (
            long "columns"
            <> short 'c'
            <> help "Number of columns"
        )
        ))
    (fullDesc <> header "h-vita")
