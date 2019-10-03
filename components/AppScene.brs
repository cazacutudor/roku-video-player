sub init()
    m.top.setFocus(true)

    m.videoPlayer = m.top.findNode("videoPlayer")

    runTask("GetVideoPlayerContent", "onGetVideoPlayerContentReady")
end sub

sub onGetVideoPlayerContentReady(event as Object)
    videoPlayerContent = event.getData()

    m.videoPlayer.content = videoPlayerContent
end sub

function onKeyUp() as Boolean
    m.videoPlayer.control = "stop"

    return true
end function

function onKeyDown() as Boolean
    m.videoPlayer.control = "play"

    return true
end function

function onKeyEvent(key as String, press as Boolean) as Boolean
    handled = false

    if press then
        if key="up" then handled = onKeyUp()
        if key="down" then handled = onKeyDown()
    end if

    return handled
end function
