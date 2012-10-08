DX-Auth - CodeIgniter Auth Library Version 2 (Development Branch)
=======

Download version 1.0.6 https://github.com/eyoosuf/DX-Auth/zipball/initail

Introduction
===

DX Auth is an authentication library for Code Igniter. It’s goal to enable you to easily include secure and easy to use authentication library to your project, while giving you the flexibility to choose from simple authentication system to full fledged authentication system.

DX Auth is also build with internationalization in mind, so every string is available in language file. (Except the examples because that is your code, not the library).

It’s based on CL Auth 0.2.5 beta developed by Jason Ashdown.

till the version 1.0.6 developerd by Dexcell

What is the feature of DX Auth?

  * Basic auth (Login, logout, register, change password).
  * Remember me.
  * Login using username or email address or both (depend on config settings).
  * Forgot password.
  * Ban user.
  * Last login IP address and time (optional).
  * Email activation (optional).
  * User Profile (optional).
  * Role based (admin, user, moderator, etc). Inheritance also supported (optional)
  * Restrict page based on URI and role (optional).
  * Custom permission for each role (optional).
  * Login attempt (optional). You can use this to display catpcha after specified try to login to prevent bot.
  * Event feature (For example: You can put your own code like PM welcome message after user activated, etc).
  * Captcha (optional, reCAPTCHA).
  * Simple admin panel (So you can customize it, include it into your own admin panel, or delete if you don’t need it).
  * Most of the feature is optional, means you can turn it off in config file, delete it, or just don’t use it.

DX Auth is tested in CI 2.1