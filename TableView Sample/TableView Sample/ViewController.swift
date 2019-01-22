import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //let paises = ["Argentina","Bolivia","Colombia","Ecuador","Peru"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        /*
        ============ En caso se retorne 2 secciones ===========
        if section == 0 {
            return 2
        }else if section == 1 {
            return 6
        }
        */
        //paises.count
        return 9
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda1", for: indexPath)
        
        let numFila = indexPath.row
        celda.textLabel?.text = "data row \(numFila)"
        
        celda.detailTextLabel?.text = "subtitle \(numFila)"
        
        celda.imageView?.image = UIImage(named: "logoSwift")
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

