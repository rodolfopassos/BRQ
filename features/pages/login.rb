# encoding: utf-8
# !/usr/bin/env ruby


class Login < SitePrism::Page
  set_url "https://the-internet.herokuapp.com/login"
  element :username_field, "input[id='username']"
  element :password_field, "input[id='password']"
  element :login_button, "button[class='fa fa-2x fa-sign-in']"
  element :data_alert, "div[id='flash']"
  element :logout_button, "button[class='icon-2x icon-signout']"
  element :data_alert, "div[id='flash']"
  
end
