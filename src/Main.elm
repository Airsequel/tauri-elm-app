module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    { counter : Int }


init : Model
init =
    { counter = 0 }



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | counter = model.counter + 1 }

        Decrement ->
            { model | counter = model.counter - 1 }



-- VIEW


view : Model -> Html Msg
view model =
    div
        [ style "text-align" "center" ]
        [ button [ onClick Increment ] [ text "+" ]
        , div [] [ text (String.fromInt model.counter) ]
        , button [ onClick Decrement ] [ text "-" ]
        ]
