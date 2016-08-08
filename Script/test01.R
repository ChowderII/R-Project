library("rvest")
html1 <- html("http://academic.research.microsoft.com/RankList?entitytype=4&topdomainid=2&subdomainid=6&last=0")
html2 <- html("http://academic.research.microsoft.com/RankList?entitytype=3&topDomainID=2&subDomainID=6&last=0&start=1&end=100")
html3 <- html("http://academic.research.microsoft.com/RankList?entitytype=3&topDomainID=2&subDomainID=7")
html4 <- html("http://academic.research.microsoft.com/RankList?entitytype=4&topDomainID=2&subDomainID=7")

#IMPORTANTLINK <- html("https://www.coursera.org/learn/r-programming/lecture/MzJQR/data-types-matrices")

CSSElementIDs <- c("#ctl00_MainContent_divRankList a", ".staticOrderCol:nth-child(3)", ".staticOrderCol:nth-child(4)")

gatherCSSElement <- function ()
{
  #Used to gather the CSS 
  
  cssNodes <- html_nodes(htmlpage, "#detailed-forecast-body b , .forecast-text")
}