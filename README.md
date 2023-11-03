# CalendarTask Demo

## Installation guide

** You need Xcode 14.3.1 ** 

1. Clone this git repository
2. Select the App scheme from the schemes list (next to the device / simulator selector dropdown)
3. Run `pod install`.
4. Build & Run

### Description 
The demo calendar view prepared to find list of holidays for selected day

#### Project Structure -
project structure based on MVVM architecture

## Workspace structure and dependencies 

The product workspace contains of the app target and several framework targets:

1. CalendarTask - the main app target, contains UI code


## CalendarTask UI Code structure
1. README - It contains how to run the code, explain project structure, it's dependancy, pod file etc.
1. CalendarTask - Contains all UI Component, View, Model, View Model, .Plist File, Assets, Extension.
   The folder structure of this app is explained below

## CalendarTask Folder Structure

| Folder Name                  | Description                                                                                                                                                         |
| --------------------------   | -------------------------------------------------------------------------                                                                                           |
| *CalendarTask*           |  Main file for app enter and Info list.                                                                                                                       |
| *View*                    |  It contains View design and Data binding.             |
| *View Model*     |  It contains api call structure and observed object.                                                                    |
| *Model*                      | It contais api json model.                                                                                |
| *Extension*              |  framework containing various extensions on components from Swift, Foundation, SwiftUI, etc.                                                                             |
| *Resources*                |  IIt is contains font's file, string file and static json file.                                                                                                                              |
| *Assets*                     |  It is contain image assets for used in design.                                                                                                                     |
| *Preview Content*            |                                                                                                                                                                     |

## Dependencies

Check the Podfile on the code to check the dependencies. 

## File Structure
```
.
├── CalenderTask
│   ├── Info.plist
│   ├── CalenderTaskApp.swift
│   ├── View
│   │   ├── BalanceView.swift
│   │   ├── CalenderView.swift
│   │   ├── HolidayCellView.swift
│   │   ├── HolidaysView.swift
│   │   ├── MyCalendarView.swift
│   │   ├── MyTimeBalanceView.swift
│   │   ├── NavigationTopView.swift
│   │   └── TimeRequestView.swift
│   └── ViewModel
│       ├── MyCalenderApiService.swift
│       └── MyCalenderViewModel.swift
│   ├── Model
│   │   └── MyCalenderModel.swift
│   ├── Extension
│   │   ├── Color+Extension.swift
│   │   ├── Date+Extension.swift
│   │   ├── Font+Extension.swift
│   │   ├── String+Extension.swift
│   │   └── View+Extension.swift
│   ├── Resources
│   │   ├── AppFonts.swift
│   │   ├── AppStrings.swift
│   │   ├── Lato
│   │   │   ├── Lato-Black.ttf
│   │   │   ├── Lato-Bold.ttf
│   │   │   ├── Lato-Hairline.ttf
│   │   │   ├── Lato-Light.ttf
│   │   │   ├── Lato-Medium.ttf
│   │   │   ├── Lato-Regular.ttf
│   │   │   ├── Lato-Semibold.ttf
│   │   │   └── README.txt
│   │   ├── LatoFonts.swift
│   │   └── mycalender.json
│   ├── Assets.xcassets
│   ├── Preview Content
│   │   └── Preview Assets.xcassets
│   │       └── Contents.json
├── Podfile
├── Podfile.lock
├── Pods
│   ├── FSCalendar
```
#### Cocoapods

Cocoapods integrate a couple of important components for this project, mainly `Amplify` and `ResearchKit`

* ResearchKit; while CareKit could be installed via SPM, ResearchKit could not be installed via SPM. And CareKit needs ResearchKit linked for `OCKSurveyTaskViewControllerDelegate` which had been used in `CareFeedViewController` class from App target. Might be depricated in the future, though. `ResearchKit` is linked to `CareKit` and App targets by cocoapods, please check `researchkit_pod` in the `Podfile`
* Amplify; there're several amplify pods that are linked to `AmplifyModels`, `Networking` and App targets by cocoapods; please check `amplify_pods` in the `Podfile`

#### SPM

SPM is used for one small helper extension currently 

## Style guide 

* The product follows zero warnings policy, meaning that all the warnings should be fixed, only ToDo related warnings that are produced by SwiftLint kept for tech debt kind of things that for one reason or another are not filed as JIRA tickets.
* SwiftLint is used to enforcing style guide. SwiftLint is integrated via cocoapods. Please refer to `swiftlint.yml` for it's configuration.
* `print()`s are not used, instead debug asserting notion is being used to verify any expectations and assumptions about the code; please check `ExpectationFailed.swift`, `Optional+ExpectingNonNil.swift`; like assert, expectation would crash the app in debug but would be ignored in release; asserts are extracted to these helper functions so that they could be easily disabled at any time, or as a potential extension point for logging of unexpected cases

## Unit Tests

Currently there are none, it would be helpful to add some to cover Storage framework

