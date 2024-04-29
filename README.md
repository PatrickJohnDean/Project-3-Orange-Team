# Project-3-Orange-Team
PROJECT INTRODUCTION:

The Bipartisan Infrastructure Law (aka The Infrastructure Investment and Jobs Act) is a historic investment of $1.2 trillion to improve the United States' infrastructure. Approximately $110 billion has been appropriated to the improvement for roads and bridges. Specifically, the BIL creates $40 billion of new funding for bridge repair, replacement, or rehabilitation.  As noted in the White House Fact Sheet, this "is the single largest dedicated bridge investment since the construction of the interstate highway system".   Our country has 45,000 bridges that are considered in poor condition that present safety, climate, and economic issues if not addressed.  States and cities are preparing infrastructure needs assessments to prioritize projects to submit grant proposals to receive funding.

The mayor of Philadelphia has organized an Infrastructure Solutions Team to assess all of the infrastructure needs within the city. Our group has been assigned to the Bridge Solutions Team to assess the current status of each city-maintained bridge and to make recommendations for which bridges to prioritize.  We used the National Transportation Atlas Database https://geodata.bts.gov/datasets/national-bridge-inventory/about through the Bureau of Transportation Statistics provided by the United States Department of Transportation.  We filtered the dataset to extract the bridges within the state of PA, city of Philadelphia, and maintained by the city.  This resulted in 158 total bridges which were further filtered by their bridge condition as either Good, Fair, or Poor.  The dataset provided the latitude and longitude which we used to reverse geolocate the address of each bridge.  Furthermore, we used the average daily traffic flow provided in the dataset and appended it to each bridge.  As a result of the dataset cleaning, we were able to assess all of the bridges maintained by the city of Philadelphia that are rated as 'Poor' and their average daily traffic volume.

BRIDGE SOLUTIONS TEAM RECOMMNEDATIONS

Our recommendation to the mayor is to prioritize the poor rated bridges with the highest daily traffic flow of  >= 10,000 vehicles per day which resulted in these 15 bridges:

Bridge ID #466580, Spring Garden Street, Mantua, 19104"
Bridge ID #466581, 2917, Spring Garden Street, Mantua, 19104
Bridge ID #466638, North 2nd Street, Chopersville, 19140
Bridge ID #466643, Roosevelt Expressway, East Falls, 19129
Bridge ID #466648, West Abbottsford Avenue, Abbotsford Homes, 19129
Bridge ID #466663, 401, East Hunting Park Avenue, Juniata, 19124
Bridge ID #466677, Falls Bridge, East Falls, 19129"
Bridge ID #466683, Tabor Road, Cedar Grove, 19120"
Bridge ID #466688, South 61st Street, Elmwood Park, 19142
Bridge ID #466705, Pine Road, 19115
Bridge ID #466707, 2357, South 70th Street, Paschall, 19142
Bridge ID #466739, Krewstown Road, 19152
Bridge ID #466747, West Bells Mill Road, 19118
Bridge ID #466770 Byberry Road, 19116
Bridge ID #466781 West River Drive Bridge, Schuylkill Expressway, Mantua, 19130

For the cost implications of our recommendation, we used information from the Federal Highway Administration (FHWA). In their “Bridge Replacement Unit Costs 2022” tables (https://www.fhwa.dot.gov/bridge/nbi/sd2022.cfm) the FHWA estimated that the average cost to replace the non-National Highway System (non-NHS) bridges is $314 per square foot. As well, they estimated the cost to repair the non-NHS bridges would be 68% of the replacement cost yielding an estimate of $213.52 per square foot. We used those estimates, multiplied by the square footage of each bridge, to produce the following cost estimates:

•	The estimated cost to repair all 15 bridges is $2,885,840.23.
•	The estimated cost to replace all 15 bridges is $4,243,882.70.
•	By repairing the bridges before they need to be replaced the city of Philadelphia would save an estimated $1,358,042.47.

While we consider the FHWA a reliable source for these cost estimates, due to our totals to repair and replace being so low compared to that of anecdotal evidence we found in articles on bridge repair/replacement projects we couldn’t help but question what went into the creation of the cost estimates. There was no further explanation of what those cost estimates covered, and our speculation is that they may only be for the cost of materials.

The data supports the recommendation to repair the bridges rather than replacing them to save the city approximately 47%. However, the team's top priority is safety!  Some of the 15 bridges may be at such structural risk that immediate replacement is the prudent course of action. As a result, the Bridge Solutions Team's recommendation may actually be a combination of repair and replacement. This is one of the limitations with our project of not knowing the actual structural integrity of the 15 bridges.

INSTRUCTIONS FOR USING AND INTERACTING WITH THE PROJECT:

*The initial NTAD dataset is too large to house in a github repository, it can be downloaded here: https://geodata.bts.gov/datasets/national-bridge-inventory/about *

After importing the full National Bridge Inventory csv we filtered it to reflect the state of PA, city of Philadelphia, City Maintained Bridges which resulted in a total of 158 bridges. We filtered the data further to only include the Latitude, Longitude, Year Built, Bridge Condition, Average Daily Traffic, Deck Width, Structure Length columns for these 158 bridges and created the SqFt column by multiplying the Deck Width by the Structure Length.

We then used the FHWA’s replacement cost estimate (of $314 per square foot) and repair cost estimate (68% of their replacement cost estimate, $213.52) multiplied by the square footage of each bridge to create the Est Repair Cost and Est Replacement Cost columns.

The NTAD dataset provided the latitude and longitude of each bridge. However, we wanted to get the actual address for each bridge to add to our pop-up marker.  This was successfully completed by using two Python libraries, Geopy and Geocoder, to reverse geolocate the address of each bridge.

Once the task of cleaning the data was completed, we used it to create a  Mongo Database and extracted the data from there to create our visualizations. We also kept a copy of the cleaned csv (cleaned_bridge_df.csv) in the repository for others to import if desired.

With our cleaned data we used the Folium Python library to create the interactive visualization.  Markers were created for each bridge maintained by Philadelphia as follows:

Green markers = 'Good' bridges
Orange markers = 'Fair' bridges
Red markers = 'Poor' bridges

This enabled us to identify all the poor bridges within the city.  The user can click on each pop-up marker for the poor bridges to obtain more information about each bridge such as address, and year built.

Next, we used the average daily traffic volume (ADTV) for all of the poor bridges and created color coded markers.  This information was separated as follows:

Green circles = ADTV <5,000 vehicles per day
Orange circles = ADTV 5,001 to <10,000 vehicles per day
Red circles = ADTV >= 10,000 vehicles per day

This information enabled us to identify the poor bridges with >=10,000 vehicles per day which resulted in 15 bridges.  These are the bridges that we focused on to develop the cost analysis of the project.

Finally, we created a layer control for users to toggle between bridge conditions and average daily traffic volumes.

ETHICAL CONSIDERATIONS:

As we see it the city has three courses of action with the results of our study:

1.	The first option would be to follow our recommendation and use the funding from the Bipartisan Infrastructure Law to repair the priority bridges before they need to be replaced. This would mitigate the risk of the deteriorating bridges while using the least amount of the funding available.

2.	The second option is to delay repairing the priority bridges and risk having to spend more of the funding to replace them. This would take more money away from the other infrastructure projects the funding is earmarked for.

3.	The third option is to do nothing and run the even greater risk of any one of the 15 priority bridges collapsing. 

A recent example of the extent of that risk is demonstrated by the collapse of the Fern Hollow Bridge in Pittsburgh in Jan of 2022. Which caused the following ethical impacts: 

•	$25 million dollars of state funding to clean up and rebuild the collapsed bridge. 
•	Increased traffic delays due to rerouting leading to increased fuel consumption, and increased climate impact. 
•	People traveling on the bridge at the time of the collapse were injured, no deaths (fortunately).

It was determined that the bridge failed due to the City of Pittsburgh not acting on recommended maintenance and repairs.  The NTSB cited the bridge was due for structural repairs about 10 years prior to the collapse. As well prior to the collapse the bridge handled a volume of about 14,000 vehicles per day which is similar to our priority bridges.

If the city of Philadelphia does nothing or defers the repairs, it could compromise safety, transportation reliability, increase future repair costs, decrease economic competitiveness for companies due to delays, increase traffic congestion, and decrease quality of life for the city's residents.

FUTURE INFRASTRUCTURE SOLUTIONS TEAM PROJECT:
The state of Pennsylvania depends heavily on the gasoline tax to fund the state's transportation system. In fact, 75% of the funding is derived from the gasoline tax.  However, the state is experiencing a decrease in its funding budget from the gasoline tax due to the changes in driving patterns due to the emergence of EV, improved vehicle fuel efficiency, telecommuting, and online shopping as examples.  Alternative funding sources will need to be identified to eliminate the deficit that is developing in the state's transportation funding which impacts all cities.

NEW LIBRARIES USED BY THE BRIDGE SOLUTIONS TEAM:
(1) Folium to create the visualizations with Python in Jupyter Notebook
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
![image](https://github.com/PatrickJohnDean/Project-3-Orange-Team/assets/154106237/e9e82796-1635-45e1-bbca-47c735f037b8)
