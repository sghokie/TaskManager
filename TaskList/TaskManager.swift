
import UIKit

// global declration
var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "un-named"
    var desc = "undescribed"
}

class TaskManager: UIViewController {
    
    var tasks = [task]()
    
    
    func addTask(name: String, desc: String)
    {
        tasks.append(task(name: name,desc: desc))
        
    }

   
}
