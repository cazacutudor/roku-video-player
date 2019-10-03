sub runTask(taskName as String, callbackFunction as String)
    task = createTask(taskName, callbackFunction)

    task.control = "RUN"
end sub

function createTask(taskName as String, callbackFunction as String) as Object
    task = CreateObject("roSgNode", taskName)

    task.observeField("data", callbackFunction)
    return task
end function
