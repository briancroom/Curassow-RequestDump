#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Inquiline
import Curassow

setbuf(stdout, nil)

serve { request in
    return Response(.Ok, contentType: "text/plain; charset=utf-8", body: responseTextForRequest(request))
}
