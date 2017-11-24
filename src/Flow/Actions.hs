module Flow.Actions (event) where

import Graphics.Vty.Input.Events (Event)
import Flow.State (State, Mode(..), mode)

import Flow.Actions.Normal
import Flow.Actions.Insert
import Flow.Actions.CreateList

event :: Event -> State -> State
event e s = case mode s of
    Insert -> insert e s
    Normal -> normal e s
    CreateList -> createList e s
    _ -> s