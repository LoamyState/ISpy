//
//  ViewController.swift
//  ISpy
//
//  Created by Jane Madsen on 3/6/23.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        let width = size.width / imageView.bounds.width
        let height = size.height / imageView.bounds.height
        let scale = min(width, height)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }

}

