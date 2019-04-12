import Vapor
import Foundation
let version = "api/V1/"
//var json =

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    
    router.get(version + "CetEthConfig") { (req) in
        
        return CetEthConfig(
            policeAmount: 50000,
            policePrice: 0.00015,
            policeTime: 5 * 60
        )
    }
    
    router.post(version + "CetEthConfig") { (req) in
        
        return CetEthConfig(
            policeAmount: 50000,
            policePrice: 0.00015,
            policeTime: 5 * 60
        )
    }
    
    router.get(version + "test") { (req) in
//        HTTPResponse
        return HTTPResponse(status: .ok, version: HTTPVersion.init(major: 10, minor: 10))
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
