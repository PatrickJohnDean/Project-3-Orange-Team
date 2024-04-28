# Project-3-Orange-Team
Repository for my the Orange Teams Project 3 submission

PROJECT INTRODUCTION:
The Bipartisan Infrastructure Law (aka The Infrastructure Investment and Jobs Act) is a historic investment of $1.2 trillion to improve the United States' infrastructure. Approximately $110 billion has been appropriated to the improvement for roads and bridges. Specifically, the BIL creates $40 billion of new funding for bridge repair, replacement, or rehabiliation.  As noted in the White House Fact Sheet, this "is the single largest dedicated bridge investment since the construction of the interstate highway system".   Our country has 45,000 bridges that are considered in poor condition that present safety, climate, and economic issues if not addressed.  States and cities are preparing infrastructure needs assessments to prioritize projects to submit grant proposals to receive funding.

The mayor of Philadelphia has organized an Infrastructure Solutions Team to assess all of the infrastrucutre needs within the city. Our group has been assigned to the Bridge Solutions Team to assess the current status of each city maintained bridge and to make recommendations for which bridges to prioritize.  We used the National Transportation Atlas Database https://geodata.bts.gov/datasets/national-bridge-inventory/about through the Bureau of Transportation Statistics provided by the United States Department of Transportation.  We filtered the dataset to extract the bridges within the state of PA, city of Philadelphia, and maintained by the city.  This resulted in 158 total bridges which were further filtered by their bridge condition as either Good, Fair, or Poor.  The dataset provided the latitude and longitude which we used to reverse geolocate the address of each bridge.  Furthermore, we used the average daily traffic flow provided in the dataset and appended it to each bridge.  As a result of the dataset cleaning, we were able to assess all of the bridges maintained by the city of Philadelphia that are rated as 'Poor' and their average daily traffic volume.


BRIDGE SOLUTIONS TEAM RECOMMNEDATIONS
Our recommendation to the mayor is to prioritize the poor rated bridges with the highest daily traffic flow of >10,000 vehicles per day which resulted in these 15 bridges:

#466580 Spring Garden Street, Mantua, 19104"
#466581 2917, Spring Garden Street, Mantua, 19104
#466638 North 2nd Street, Chopersville, 19140
#466643 Roosevelt Expressway, East Falls, 19129
#466648 West Abbottsford Avenue, Abbotsford Homes, 19129
#466663 401, East Hunting Park Avenue, Juniata, 19124
#466677 Falls Bridge, East Falls, 19129"
#466683 Tabor Road, Cedar Grove, 19120"
#466688 South 61st Street, Elmwood Park, 19142
#466705 Pine Road, 19115
#466707 2357, South 70th Street, Paschall, 19142
#466739 Krewstown Road, 19152
#466747 West Bells Mill Road, 19118
#466770 Byberry Road, 19116
#466781 West River Drive Bridge, Schuylkill Expressway, Mantua, 19130

The total cost to repair the 15 bridges is $4,243,882.00.
The total cost to replace the 15 bridges is $6,240,940.00.
The city of Philadelphia will save $1,997,057.00.
The data supports the recommendation to repair the bridges rather than replacing them to save the city approximately 37%. However, the team's top priority is safety!  Some of the 15 bridges may be at such structural risk that immediate replacement is the prudent course of action. As a result, the Bridge Solutions Team's recommendation may actually be a combination of repair and replacement. This is one of the limitations with our project of not knowing the actual structural integrity of the 15 bridges.  


INSTRUCTIONS FOR USING AND INTERACTING WITH THE PROJECT:
The initial NTAD dataset was filtered to reflect the state of PA, city of Philadelphia, City Maintained Bridges which resulted in a total of 158 bridges. We filtered the data further by including the Latitude, Longitude, Year Built, Bridge Condition, Average Daily Traffic, Deck Width, Structure Length for these 158 bridges. The the SqFt column was added by multiplying the Deck Width by the Structure Length.  

We used information from the Federal Highway Administration (FHWA) regarding National Highway System Bridges versus the Non-National Highway System Bridges to create the Est Repair Cost and Est Replacement Cost columns (https://www.fhwa.dot.gov/bridge/nbi/sd2022.cfm). Our project focused on the bridges maintained by the city of Philadelphia so we used the information for the Non-National Highway System Bridges (non_NHS Bridges). The "National Average of the costs collected to replace non-NHS bridges is $314/ft2." The values in the SqFt column were multiplied by $314 to calculate the Est Repair Cost values. {how was the est cost to replace calculated?  was this the 68%}

The NTAD dataset provided the latitude and longitude of each bridge. However, we wanted to get the actual address for each bridge to add to our pop-up marker.  This was successfully completed by using two new libraries called Geopy and Geocoder to reverse geolocate the address of each bridge.  

Once the task of cleaning the data was completed, we used the Python library called Folium to create the interactive visualization.  Markers were created for each bridge maintained by Philadelphia as follows:
Green markers = 'Good' bridges
Orange markers = 'Fair' bridges
Red markers = 'Poor' bridges
This enabled us to identify all of the poor bridges within the city.  The user can click on each pop-up marker for the poor bridges to obtain more information about each bridge such as address and year built.

Next we used the average daily traffic volume (ADTV) for all of the poor bridges and created color coded markers.  This information was separated as follows:
Green circles = ADTV <5,000 vehicles per day
Orange circles = ADTV 5,001 to <=10,000 vehicles per day
Red circles = ADTV >10,001 vehicles per day
This information enabled us to identify the poor bridges with >10,001 vehicles per day which resulted in 15 bridges.  These are the bridges that we focused on to develop the cost analysis of the project.

Finally, we created a layer control for users to toggle between bridge conditions and average daily traffic volumes.



ETHICAL CONSIDERATIONS:
The Bridge Solutions Team has identified three ethical considerations as part of its overall strategy to develop an action plan for improving bridge infrastructure within the city of Philadelphia. The first option is to delay or defer for a future time the recommended repairs or reconstruction.  The second option is to do nothing, and the third option is to implement the recommended plan based on the results of our assessment.  The first two options present a few ethical considerations as demonstrated by the Fern Hollow Bridge collapse in Jan of 2022 which cost $25 million dollars to replace. The bridge was accessed by 14,000 vehicles per day prior to the collapse.  The NTSB determined the bridge's failure was due to the City of Pittsburgh not acting on recommended maintenance and repairs.  Fortunately no one was hurt during the bridge collapse, but several people were injured while driving over the bridge at the time of the collapse.  The NTSB cited the bridge was due for structural repairs about 10 years prior to the collapse. The collapse presented several challenges to the local community with increased traffic delays due to rerouting, increase fuel costs, increased commuter time, and increased climate impact.  Furthermore, the city unexpectedly had to use finances to reconstruct the bridge which meant it had to pull funding from other programs.
If the city of Philadelphia does nothing or defers the repairs, it could compromise safety, transportation reliability, increase future repair costs, decrease economic competitiveness for companies due to delays, increase traffice congestion, and decrease quality of life for the city's residents.


FUTURE INFRASTRUCTURE SOLUTIONS TEAM PROJECT:
The state of Pennsylvania depends heavily on the gasoline tax to fund the state's transportation system. In fact, 75% of the funding is derived from the gasoline tax.  However, the state is experiencing a decrease in it's funding budget from the gasoline tax due to the changes in driving patterns due to the emergence of EV, improved vehicle fuel efficiency, telecommuting, and online shopping as examples.  Alternative funding sources will need to be identified to eliminate the deficit that is developing in the state's transportation funding which impacts all cities.


NEW LIBRARIES USED BY THE BRIDGE SOLUTIONS TEAM:
(1) Folium to create the visualizations in Jupyter Notebook
(2) Geopy for reverse geolocation
(3) Geocoder for reverse geolocation


DATA SOURCES:
https://geodata.bts.gov/datasets/national-bridge-inventory/about
https://www.fhwa.dot.gov/bridge/mtguide.pdf
https://www.phila.gov/media/20210830100622/Approved-FY2022-2027-Capital-Program-and-Budget.pdf
https://www.cbsnews.com/philadelphia/news/philadelphia-is-using-federal-funds-to-address-bridges-in-poor-condition/
https://controller.phila.gov/wp-content/uploads/2018/06/StreetsDepartment-BridgeReview2013.pdf
https://www.penndot.pa.gov/about-us/funding/Pages/default.aspx
https://www.transportation.gov/
https://www.cbsnews.com/pittsburgh/news/ntsb-fern-hollow-bridge-collapse-final-report/
https://zoom.us/postattendee?mn=i04UTNpR8_x-lRXKdgCKD_2d_iVfAmM6wmP5.-qCLNhIDrWgiH2UC
https://www.whitehouse.gov/briefing-room/statements-releases/2021/07/28/fact-sheet-historic-bipartisan-infrastructure-deal/
https://www.whitehouse.gov/wp-content/uploads/2022/05/BUILDING-A-BETTER-AMERICA-V2.pdf
https://www.whitehouse.gov/build/guidebook/
https://commons.wikimedia.org/wiki/File:Infrastructure_Investment_and_Jobs_Act_Summary.png#/media/File:Infrastructure_Investment_and_Jobs_Act_Summary.png
https://nypost.com/wp-content/uploads/sites/2/2022/01/GettyImages-1238039300-1.jpg?quality=90&strip=all&w=1756


CODE REFERENCES:
We used Xpert Learning Assistant, ChatGPT, class zoom recordings and activities, and Instructor/TA to help with development of our code.