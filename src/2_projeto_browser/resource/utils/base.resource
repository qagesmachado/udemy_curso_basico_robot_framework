*** Settings ***

## Pages
Resource   ../pages/create_account.resource
Resource   ../pages/home_page.resource
Resource   ../pages/my_account.resource
Resource   open_browser.resource

## Locators
Resource    ../locators/create_account_locators.resource
Resource    ../locators/home_page_locators.resource
Resource    ../locators/my_account_locators.resource

## Library
Library    Browser    auto_closing_level=KEEP