{- This file re-implements the Elm Counter example (1 counter) with elm-mdl
   buttons. Use this as a starting point for using elm-mdl components in your own
   app.
-}


module Main exposing (..)

import Html exposing (..)
-- import Html.Attributes exposing (href, class, style)
import Material
import Material.Scheme
-- import Material.Button as Button
import Material.Tabs as Tabs
import Material.Icon as Icon
import Material.Options as Options exposing (css)


-- MODEL


type alias Model =
    { tab : Int
    , mdl :
        Material.Model
        -- Boilerplate: model store for any and all Mdl components you use.
    }


model : Model
model =
    { tab = 0
    , mdl =
        Material.model
        -- Boilerplate: Always use this initial Mdl model store.
    }



-- ACTION, UPDATE


type Msg 
    = SelectTab Int
    | Mdl (Material.Msg Msg)



-- Boilerplate: Msg clause for internal Mdl messages.


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SelectTab idx ->
            ({ model | tab = idx }, Cmd.none)

        -- Boilerplate: Mdl action handler.
        Mdl msg_ ->
            Material.update Mdl msg_ model



-- VIEW
aboutTab : Html Msg
aboutTab =
  text "World"
  
exampleTab : Html Msg
exampleTab =
    text "Hello"

type alias Mdl =
    Material.Model


view : Model -> Html Msg
view model =
    Tabs.render Mdl [0] model.mdl
        [ Tabs.ripple
        , Tabs.onSelectTab SelectTab
        , Tabs.activeTab model.tab
        ]
        [ Tabs.label
            [ Options.center ]
            [ Icon.i "favorite"
            , Options.span [ css "width" "4px" ] []
            , text "About tabs"
            ]
        , Tabs.label
            [ Options.center ]
            [ Icon.i "done"
            , Options.span [ css "width" "4px" ] []
            , text "Example"
            ]
        ]
        [ case model.tab of
            0 -> aboutTab
            _ -> exampleTab
        ]
        |> Material.Scheme.top



-- Load Google Mdl CSS. You'll likely want to do that not in code as we
-- do here, but rather in your master .html file. See the documentation
-- for the `Material` module for details.


main : Program Never Model Msg
main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }