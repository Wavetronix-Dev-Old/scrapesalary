require 'rubygems'
require 'open-uri'
require 'watir'

url = "http://swz.salary.com/SalaryWizard/Engineer-III-Salary-Details-Provo-UT.aspx"

browser = Watir::Browser.new(:phantomjs)

browser.goto(url)
puts browser.div(:id => 'salarydetail').text
puts browser.td(:id => 'marketv10').text
puts browser.td(:id => 'marketv25').text
puts browser.div(:id => 'mediansalary').text
puts browser.td(:id => 'marketv75').text
puts browser.td(:id => 'marketv90').text