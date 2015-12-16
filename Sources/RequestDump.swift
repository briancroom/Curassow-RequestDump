#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Nest

func responseTextForRequest(request: RequestType) -> String {
    var lines: [String] = ["Hello from your friendly Swift server (pid \(getpid()))!"]
    lines.append("")
    lines.append("You made an HTTP \(request.method) request for the path \(request.path)")
    lines.append("")
    lines.append("Your request included the headers:")
    lines.appendContentsOf(request.headers.map({ "\($0.0): \($0.1)" }))
    lines.append("")

    if let body = request.body {
        lines.append("The request body was:")
        lines.append(body)
    } else {
        lines.append("There was no request body")
    }

    return lines.joinWithSeparator("\n")
}
