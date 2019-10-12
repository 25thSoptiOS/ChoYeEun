//
//  CoreVC.swift
//  2nd_SubSeminar
//
//  Created by 조예은 on 12/10/2019.
//  Copyright © 2019 Yeaeun. All rights reserved.
//

import UIKit
import CoreLocation

class CoreVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var Latitude: UILabel!
    @IBOutlet var Latitude_Accuracy: UILabel!
    @IBOutlet var Longitude: UILabel!
    @IBOutlet var Longitude_Accuracy: UILabel!
    
    @IBOutlet var `switch`: UISwitch!
    
    // locationManager 변수
    let locManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //
    override func viewDidAppear(_ animated: Bool) {
        // 위치 기반 서비스가 활성화 되어 있으면
        if CLLocationManager.locationServicesEnabled(){
            // 권한 상태가 거부되어 있거나 제한되어 있다면 오류발생
            if CLLocationManager.authorizationStatus() == .denied || CLLocationManager.authorizationStatus() == .restricted {
                let alert = UIAlertController(title: "오류 발생", message: "위치 서비스 기능 꺼져있음", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
                self.switch.isOn = false
            // 모두 활성화 되어 있다면 실행
            }else{
                locManager.desiredAccuracy = kCLLocationAccuracyBest
                locManager.delegate = self
                locManager.requestWhenInUseAuthorization()
            }
        }
        // 위치 기반 서비스가 비활성화 되어 있다면
        else {
            let alert = UIAlertController(title: "오류발생", message: "위치서비스 제공 불가", preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    // 토글 on되어 있으면 로케이션 시작, off면 stop
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        if sender.isOn{
            self.locManager.startUpdatingLocation()
        }else{
            self.locManager.stopUpdatingLocation()
        }
    }
    
    // 나의 location을 받아와서 label.text에 set
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location: CLLocation = locations[locations.count-1]
        Latitude.text = String(format: "%.6f", location.coordinate.latitude)
        Latitude_Accuracy.text = String(format: "%.6f", location.horizontalAccuracy)
        
        Longitude.text = String(format: "%.6f", location.coordinate.longitude)
        Longitude_Accuracy.text = String(format: "%6.f", location.verticalAccuracy)
    }
}
