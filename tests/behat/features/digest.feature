Feature: Lsdigest plugin standart features BDD
    Test base functionality of LiveStreet lsdigest plugin standart

@mink:selenium2
    Scenario: Lsdigest LiveStreet CMS
        Given I am on "/login"
        Then I want to login as "admin"

        Then run send message script

        # Go to mailing list page and check for just create mailing
        Given I am on "/mailing/list"
        Then I wait "2000"

        Then I should see in element by css "content" values:
        | value |
        | Digest of the best topics from |

        Given I am on "/mailing/edit/1"
        Then I should see in element by css "talk_text" values:
          | value |
          | Want more speeds and better protection for your data? The Sony MicroVault Mach flash USB 3.0 drive is what you need.  |
          | Another rumor for the iPad 3 has surfaced with some details given by Bloomberg,  |
          | Toshiba is to add a new Android 4.0 ICS to the mass which is known as Toshiba AT330. |