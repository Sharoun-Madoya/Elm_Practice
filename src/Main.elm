module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

type Msg = Increment | Decrement

type alias Model =
    { count : Int }

-- Model to hold the state of the counter
initialModel : Model
initialModel =
    { count = 0 }

-- Update function to update the model based on messages
update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 1 }

        Decrement ->
            { model | count = model.count - 1 }


-- View function to render the HTML
view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model.count) ]
        , button [ onClick Increment ] [ text "+" ]
        ]



-- Main function to start the Elm application
main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , update = update
        , view = view
        }
