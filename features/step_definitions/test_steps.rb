Given "I have a Workbook named $name" do |name|
  @wb.name = name
end

Then "its $attrib should be $value" do |attrib, value|
  @wb.send( attrib.to_sym ).should == value
end

Given "I have an empty Workbook" do
  @wb.delete_all
end
  
And "I add the sheets $Sheet1 $Sheet2 $Sheet3" do |sheet1, sheet2, sheet3|
  [ sheet1, sheet2, sheet3 ].each { |sht| @wb.add sht }
end

Then "I should have $num sheets" do |num|
  @wb.sheets.count.should == num.to_i
end

And "they should be called $Sheet1 $Sheet2 $Sheet3" do |sheet1, sheet2, sheet3|
  @wb.sheets.map( &:name ).should == [ sheet1, sheet2, sheet3 ]
end