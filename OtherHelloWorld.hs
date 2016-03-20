module Main where

import Happstack.Server(nullConf, Conf(..), simpleHTTP, toResponse, ok)

main :: IO()
main = simpleHTTP(nullConf {port=9000}) $ ok "Other hello world from port 9000!"

sayHello :: String -> IO()
sayHello x = putStrLn("Hello," ++ x ++ "!")