{-# LANGUAGE OverloadedStrings #-}

module Forms
    ( signupForm
    )
where

import Import

signupForm :: Form Signup
signupForm = renderDivs $ Signup
    <$> areq emailField fss Nothing
  where
    fss = "" { fsAttrs = [("placeholder", "you@example.com")] }
