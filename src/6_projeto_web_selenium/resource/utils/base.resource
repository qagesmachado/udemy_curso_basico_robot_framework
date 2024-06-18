*** Variables ***
# URL
${URL_BASE}     http://www.advantageonlineshopping.com/#/

# Credencial
${USERNAME}         robot_qa_basic
${EMAIL}            robot_qa_basic@qa.com
${PASSWORD}         Teste123!@#


*** Settings ***
# Resource
Resource    ../pages/authentication.resource
Resource    ../pages/home.resource
Resource    ../pages/product.resource
Resource    ../pages/product_description.resource
Resource    ../pages/checkout.resource

# Library
Library    SeleniumLibrary
