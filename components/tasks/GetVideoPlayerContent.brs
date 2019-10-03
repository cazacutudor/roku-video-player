sub init()
    m.STREAM_FORMAT = "hls"
    m.VIDEO_URI = "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8"

    m.top.functionName = "execute"
end sub

sub execute()
    sendData(createVideoPlayerContent())
end sub

function createVideoPlayerContent() as Object
    content = CreateObject("roSGNode", "ContentNode")

    content.url = m.VIDEO_URI
    content.streamFormat = m.STREAM_FORMAT

    return content
end function

sub sendData(data as Object)
    m.top.data = data
end sub
