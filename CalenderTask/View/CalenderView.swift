//
//  CalenderView.swift
//  CalenderTask
//
//  Created by tristate22 on 02.11.23.
//

import SwiftUI

struct CalendarView: View {
    @Binding var arrHolidays: [HolidayData]
    var body: some View {
        VStack(alignment: .leading) {
            Text(strMyCalendar).fontBold26.foregroundColor(.blackColor)
            
            CalendarModuleView(arrHolidays: $arrHolidays)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.lightgrayColor, lineWidth: 1)
                )
                .background(Rectangle().fill(Color.white).cornerRadius(8).shadow(color: .shadowColor, radius: 1, y: 2))
        }.foregroundColor(Color.blackColor)
    }
}

#Preview {
    CalendarView(arrHolidays: Binding.constant([]))
}

import SwiftUI
import FSCalendar

class CalendarModule: UIViewController, FSCalendarDelegate, FSCalendarDelegateAppearance {
    // MARK: - Variables
    var calendar = FSCalendar()
    var arrDate: [HolidayData] = []
    var btnDoublePrevious: UIButton = UIButton()
    var btnPrevious: UIButton = UIButton()
    var btnDoubleNext: UIButton = UIButton()
    var btnNext: UIButton = UIButton()
    private var currentPage: Date?
    private lazy var today: Date = {
        return Date()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        initCalendar()
        view.addSubview(calendar)
        let w: CGFloat = 20
        btnDoublePrevious.frame = CGRect(x: 10, y: 15, width: w, height: w)
        btnDoublePrevious.setImage(UIImage(named: "doubleleft"), for: .normal)
        btnDoublePrevious.addTarget(self, action: #selector(btnDoublePreviousAction), for: .touchUpInside)
        view.addSubview(btnDoublePrevious)
        
        btnPrevious.frame = CGRect(x: btnDoublePrevious.frame.origin.x + btnDoublePrevious.frame.size.width + 10, y: 15, width: w, height: w)
        btnPrevious.setImage(UIImage(named: "left"), for: .normal)
        btnPrevious.addTarget(self, action: #selector(btnPreviousAction), for: .touchUpInside)
        view.addSubview(btnPrevious)
        
        btnDoubleNext.frame = CGRect(x: UIScreen.screenWidth - 42 - w, y: 15, width: w, height: w)
        btnDoubleNext.setImage(UIImage(named: "doubleright"), for: .normal)
        btnDoubleNext.addTarget(self, action: #selector(btnDoubleNextAction), for: .touchUpInside)
        view.addSubview(btnDoubleNext)
        
        btnNext.frame = CGRect(x: btnDoubleNext.frame.origin.x - w - 10, y: 15, width: w, height: w)
        btnNext.setImage(UIImage(named: "right"), for: .normal)
        btnNext.addTarget(self, action: #selector(btnNextAction), for: .touchUpInside)
        view.addSubview(btnNext)
    }
    
    // MARK: - Button Action
    @objc func btnDoublePreviousAction() {
        print("Double Previous")
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = -1
        
        self.currentPage = calendar.date(byAdding: dateComponents, to: self.currentPage ?? self.today)
        self.calendar.setCurrentPage(self.currentPage!, animated: true)
    }
    
    @objc func btnPreviousAction() {
        print("Previous")
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.month = -1
        
        self.currentPage = calendar.date(byAdding: dateComponents, to: self.currentPage ?? self.today)
        self.calendar.setCurrentPage(self.currentPage!, animated: true)
    }
    
    @objc func btnDoubleNextAction() {
        print("Double Next")
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 1
        
        self.currentPage = calendar.date(byAdding: dateComponents, to: self.currentPage ?? self.today)
        self.calendar.setCurrentPage(self.currentPage!, animated: true)
    }
    
    @objc func btnNextAction() {
        print("Next")
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.month = 1
        
        self.currentPage = calendar.date(byAdding: dateComponents, to: self.currentPage ?? self.today)
        self.calendar.setCurrentPage(self.currentPage!, animated: true)
    }
    
    // MARK: - Calender setup
    private func initCalendar() {
        calendar.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: UIScreen.screenHeight * 0.5)
        calendar.allowsSelection = false
        calendar.appearance.titleTodayColor = UIColor.init(Color.wineColor)
        calendar.appearance.separators = FSCalendarSeparators.interRows
        calendar.appearance.headerTitleColor = UIColor.init(Color.blackColor)
        calendar.appearance.headerTitleFont = UIFont(name: "Lato-Regular", size: 16)
        calendar.appearance.titleFont = UIFont(name: "Lato-Regular", size: 14)
        calendar.appearance.headerMinimumDissolvedAlpha = 0
        calendar.appearance.titleDefaultColor = UIColor.init(Color.blackColor)
        calendar.appearance.todayColor = UIColor.white
        calendar.appearance.selectionColor = UIColor.systemBlue
        calendar.appearance.weekdayFont = UIFont(name: "Lato-Semibold", size: 14)
        calendar.appearance.weekdayTextColor = UIColor(Color.blackColor)
        calendar.appearance.borderRadius = 0
        calendar.collectionView.backgroundColor = .red
    }
    
    func calendar(_ calendar: FSCalendar, appearance: FSCalendarAppearance, fillDefaultColorFor date: Date) -> UIColor? {
        let day = Calendar.current.dateComponents([.weekday], from: date).weekday

        let holidate = self.arrDate.filter({ $0.holidayDate.getDate() == date}).count > 0
        if holidate {
            return UIColor(Color.holidayColor)
        } else if day == 1 || day == 7 {
            return UIColor(Color.leaveColor)
        } else {
            return UIColor(Color.whiteColor)
        }
    }
}

struct CalendarModuleViewController: UIViewControllerRepresentable {
    var arrDate: [HolidayData]
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CalendarModuleViewController>) -> UIViewController {
        let viewController = CalendarModule()
        viewController.arrDate = arrDate
        viewController.calendar.delegate = context.coordinator // ->> Add this
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<CalendarModuleViewController>) {
    
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    final class Coordinator: NSObject, FSCalendarDelegate {
        private var parent: CalendarModuleViewController
        
        init (_ parent: CalendarModuleViewController) {
            self.parent = parent
        }
    }
}

struct CalendarModuleView: View {
    @Binding var arrHolidays: [HolidayData]
    var body: some View {
        CalendarModuleViewController(arrDate: arrHolidays)
            .frame(height: UIScreen.screenHeight * 0.5)
            .frame(maxWidth: .infinity)
    }
    
}
