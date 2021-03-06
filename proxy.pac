function FindProxyForURL(url, host) {
  var match = url.match(/^\w+:\/\/[^\/]+:(\d+)\//);
  var port = (match && match[1]) || "80";

  if (shExpMatch(host, "*.local")) {
    return "PROXY 127.0.0.1:" + port;
  } else if (shExpMatch(host, "*.test")) {
    return "PROXY 127.0.0.1:" + port;
  }

  return "DIRECT";
}
