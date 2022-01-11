import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource {

    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
    }
    
    private var names = ["Eldar", "Akylzat", "Meder", "Ruslan", "Eldar1", "ELdar3444", "Akilay", "Meder44", "Ruslan34", "Eldar12"]
    
    private func setupSubView() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        let cell = UITableViewCell()
        
        cell.textLabel?.text = names[index]
        cell.backgroundColor = UIColor(
            red: CGFloat(Double.random(in: 0...1)),
            green: CGFloat(Double.random(in: 0...1)),
            blue: CGFloat(Double.random(in: 0...1)),
            alpha: 1)
        return cell
    }
}
