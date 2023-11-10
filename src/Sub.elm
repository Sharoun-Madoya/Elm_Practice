
module Sub exposing(..)
import Html exposing (Html, div, text)
add : Int -> Int -> Int
add num1 num2 =num1 + num2

five:Int
five= 
    add 2 3


multiple : Int -> Int ->Int 
multiple num3 num4 = num3 * num4

nine : Int
nine = multiple 3  3

fourteen : Int
fourteen = add five nine

four :Int
four= add 2 (1*2)

main : Html msg
main =
    div []
        [ text <| "Result: " ++ String.fromInt five]