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

Cocoapods integrate a couple of important components for this project, mainly `FSCalendar`

