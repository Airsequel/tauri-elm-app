module Main exposing (..)

import Browser
import Css
import Html exposing (Html)
import Html.Styled exposing (button, div, main_, span, text, toUnstyled)
import Html.Styled.Attributes exposing (css)
import Html.Styled.Events exposing (onClick)
import Tailwind.Theme exposing (..)
import Tailwind.Utilities exposing (..)


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
  let
    buttonStyle =
      css
        [ bg_color gray_300
        , border_0
        , rounded_md
        , text_2xl
        , w_32
        , py_2
        , Css.hover [ bg_color gray_600 ]
        , Css.active [ bg_color gray_800 ]
        ]
  in
  toUnstyled <|
    main_
      [ css [ font_sans, pt_8 ] ]
      [ div
          [ css [ flex, flex_row, justify_center, text_center ] ]
          [ button
              [ buttonStyle, onClick Decrement ]
              [ text "-" ]
          , div
              [ css [ w_36, text_2xl ] ]
              [ span
                  [ css [ relative, top_2 ] ]
                  [ text (String.fromInt model.counter) ]
              ]
          , button
              [ buttonStyle, onClick Increment ]
              [ text "+" ]
          ]
      ]
