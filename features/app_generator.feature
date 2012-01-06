Feature: Adhearsion App Generator
  In order to do development on new Adhearsion apps
  As a Adhearsiohn developer
  I want to generate an Adhearsion app

  Scenario: Generate application with valid layout
    When I run `ahn create path/somewhere`
    And I cd to "path/somewhere"
    Then the following directories should exist:
      | lib                   |
      | config                |
      | script                |

    And the following files should exist:
      | config/adhearsion.rb  |
      | config/environment.rb |
      | Gemfile               |
      | lib/simon_game.rb     |
      | script/ahn            |
      | README                |
      | Rakefile              |

    And the file "config/adhearsion.rb" should contain each of these content parts:
    """
    Adhearsion.router
    Adhearsion.config
    config.platform.logging.level
    config.punchblock
    """
    And the file "README" should contain each of these content parts:
    """
    Start your new app with
    AGI(agi
    """
    And the file "Rakefile" should contain "adhearsion/tasks"
    And the file "Gemfile" should contain each of these content parts:
    """
    source :rubygems
    gem 'adhearsion-asterisk'
    """
    And the file "lib/simon_game.rb" should contain "class SimonGame"
    And the file "script/ahn" should contain "require 'adhearsion'"