//
//  ViewController.swift
//  rxSwiftRay
//
//  Created by Yu Juno on 2020/11/02.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
		_ = Observable.of("Hello RxSwift!")
	}
}
