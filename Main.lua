


--[[
    PROXY PROTOCOLS
    http
    socks4
    socks5
    all
]]  



local HttpResponse = syn.request({
    Url = "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=http&timeout=10000&country=all&ssl=all&anonymity=all",
    Method = "GET"
})
local socks4Response = syn.request({
    Url = "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks4&timeout=10000&country=all&ssl=all&anonymity=all",
    Method = "GET"
})
local socks5Response = syn.request({
    Url = "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks5&timeout=10000&country=all&ssl=all&anonymity=all",
    Method = "GET"
})
local allResponse = syn.request({
    Url = "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=all&timeout=10000&country=all&ssl=all&anonymity=all",
    Method = "GET"
})




if getgenv().ProxyProtocol == "http" then
    writefile("HTTP.txt", HttpResponse.Body)

end
if getgenv().ProxyProtocol == "socks4" then
    writefile("socks4.txt", socks4Response.Body)

end
if getgenv().ProxyProtocol == "socks5" then
    writefile("socks5.txt", socks5Response.Body)

end
if getgenv().ProxyProtocol == "all" then
    writefile("all.txt", allResponse.Body)

end
