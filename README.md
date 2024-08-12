# h-vita

This is the [game of life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) implemented in Haskell.

## External Dependencies

- [Data.Matrix](https://hackage.haskell.org/package/matrix-0.3.6.1/docs/Data-Matrix.html)
- [Graphics.Gloss](https://hackage.haskell.org/package/gloss)

## How to run the Game

To execute the game you do:

`stack run -- -f <life file> -r <number of rows> -c <number of columns>`

It will load a `.life` file in a matrix of the specified size. You can read about the `Life` format [here](https://conwaylife.com/wiki/Life_1.06).

## Developers

- EduardoLR10
- ribeirotomas1904

## Dr.Nekoma

Built live on [twitch](https://www.twitch.tv/drnekoma) and archived on [youtube](https://www.youtube.com/channel/UCMyzdYsPiBU3xoqaOeahr6Q)
