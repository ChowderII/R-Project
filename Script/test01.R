library("rvest")
html1 <- html_read("http://academic.research.microsoft.com/RankList?entitytype=4&topdomainid=2&subdomainid=6&last=0&orderby=6")
html2 <- html_read("http://academic.research.microsoft.com/RankList?entitytype=3&topdomainid=2&subdomainid=6&last=0&orderby=6")
html3 <- html_read("http://academic.research.microsoft.com/RankList?entitytype=3&topdomainid=2&subdomainid=7&last=0&orderby=6")
html4 <- html_read("http://academic.research.microsoft.com/RankList?entitytype=4&topDomainID=2&subDomainID=7&last=0&orderby=6")

#IMPORTANTLINK <- html("https://www.coursera.org/learn/r-programming/lecture/MzJQR/data-types-matrices")

CSSElementIDs <- c("#ctl00_MainContent_divRankList a", ".staticOrderCol:nth-child(3)", ".staticOrderCol:nth-child(4)")

getCSSElementText <- function(htmlpage, CSSElement)
{
  #Return a vector of the text values of the CSS element the function is looking for
  
  cssNodes <- html_nodes(htmlpage, CSSElement)
  cssValues <- html_text(cssNodes)
  return(cssValues)
}

getCSSElementNumber <- function(htmlpage, CSSElement)
{
  #Return a vector of numbers with proper formatting etc from the CSS element the function is looking for
  browser()
  cssNodes <- html_nodes(htmlpage, CSSElement)
  cssValues <- html_text(cssNodes)
  return(as.numeric(gsub("[^\\d]+", "", cssValues, perl=TRUE)))
}

getCSSElementNumber(html1, CSSElementIDs[3])


