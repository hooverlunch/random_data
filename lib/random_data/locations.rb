# coding:utf-8

module RandomData
  
  # Defines methods to return random location data.
  
  module Locations

    
    @@streetnames = %w(Albert Alexander Broadway Chester Church Drive George Grange Green Grove High Highfield King Kingsway Lane London Main Manchester Manor Mill New North Park Queen Queens Queensway Richmond School South Springfield St-Johns Stanley Station The Victoria West Windsor York)
                    
    @@street_types = %w(Alley Approach Bay Bend Canyon Causeway Circle Close Court Cove Crescent Drive Esplanade Fairway Frontage Gardens Gate Grade Grove Heights Highlands Hill Knoll Lane Loop Manor Mews Parade Park Parkway Pathway Place Plaza Promenade Quadrant Ridge Road Square Terrace Trail Vale View Walk Way)

    # Returns the first line of a US maiiling address (street number, street name, street type)
    #
    # Example:
    #
    #Random.address_line_1 = "24317 Jefferson Blvd"
    
    def address_line_1
      "#{rand(150)} #{@@streetnames.rand} #{@@street_types.rand}"
    end

    alias :us_address_line_1 :address_line_1

    @@line2types = ["Apt", "Bsmt", "Bldg", "Dept", "Fl", "Frnt", "Hngr", "Lbby", "Lot", "Lowr", "Ofc", "Ph", "Pier", "Rear", "Rm", "Side", "Slip", "Spc", "Stop", "Ste", "Trlr", "Unit", "Uppr"]

    # Returns the first line of a US maiiling address (street number, street name, street type)
    #
    # Example:
    #
    #Random.address_line_1 = "24317 Jefferson Blvd"
    
    def address_line_2
      "#{@@line2types.rand} #{rand(999)}"    
    end

    # Returns a random 5-digit string, not guaranteed to be a legitimate zip code.
    # Legal zip codes can have leading zeroes and thus they need to be strings.  
    
    def zipcode
     "%05d" % rand(99999) 
    end
    
    @@town = %w(Aberaeron Abercanaid Abercarn Aberdare Aberdeen Abergavenny Abergele Aberkenfig Aberporth Abertillery Abertridwr Aberystwyth Airdrie Aldershot Alloa Amlwch Ammanford Andrews Arbroath Asaph Ash Ayr Bagillt Bala Bangor Bargoed Barmouth Barnsley Barrhead Barry Bathgate Bay Bearsden Beaumaris Beddau Bedwas Bellshill Benllech Bethesda Betws Birkenhead Birmingham Bishopbriggs Bishopston Blackburn Blackpool Blackwood Blaenau Blaenavon Blantyre Bodelwyddan Bolton Bournemouth Bow Bradford Brecon Bridge Bridgend Brighton Bristol Brymbo Brynaman Brynmawr Buckhaven Buckley Builth Burnley Burry Caerleon Caernarfon Caerphilly Caldicot Cambridge Cambuslang Cardiff Cardigan Carmarthen Cefn-mawr Chatham Chepstow Chirk Church Clarkston Clears Clydebank Coatbridge Coedpoeth Colwyn Connah's Conwy Coventry Cowbridge Crawley Creigiau Criccieth Croeserw Cross Crynant Cumbernauld Cwm Cwmafan Cwmbach Cwmbran Cwmllynfell Cyfarthfa David's Denbigh Derby Dinas Dock Dolgellau Doncaster Dumbarton Dumfries Dundee Dunfermline Dyserth East Ebbw Edinburgh Elgin Emlyn Erskine Falkirk Fardre Felinheli Ferndale Ffestiniog Fishguard Flint Gelligaer Giffnock Gilfach Gilwern Glan Glanaman Glandwr Glenrothes Gloucester Glyn-Neath Glyncoch Goch Goodwick Gorseinon Grangemouth Greenfield Greenock Gresford Grimsby Hall Hamilton Hands Hastings Haven Haverfordwest Heolgerrig Holyhead Holywell Hope Huddersfield Hull Inverness Ipswich Irvine Johnston Johnstone Keynes Kidwelly Kilbride Kilmarnock Kilwinning Kirkcaldy Kirkintilloch Knighton Lampeter Langstone Larkhall Leeds Leeswood Leicester Liverpool Livingston Llanberis Llanbradach Llandeilo Llandovery Llandrindod Llandudno Llandybie Llanelli Llanfairfechan Llanfairpwll Llangefni Llangollen Llangynwyd Llanharan Llanharry Llanhilleth Llanidloes Llanrug Llanrwst Llantrisant Llantwit Llay London Luton Machen Machynlleth Maesteg Magor Major Manchester Mansfield Marshfield Mearns Menai Merthyr Middlesbrough Milford Milton Mold Monmouth Mostyn Motherwell Mountain Musselburgh Narberth Neath New Newcastle Newport Newton Newtown Neyland Northampton Northop Norwich Nottingham Oakdale Ogmore Oxford Paisley Pantymwyn Pembroke Penarth Penclawdd Pencoed Penicuik Penmaenmawr Penrhyn Penrhyndeudraeth Penrhys Pentyrch Penyffordd Penygroes Perth Peterborough Peterhead Plymouth Polmont Pontardawe Pontarddulais Pontlliw Pontyberem Pontycymer Pontypool Pontypridd Port Porthcawl Porthmadog Portsmouth Powys Prestatyn Presteigne Preston Price Pwllheli Pyle Quay Radyr Reading Renfrew Resolven Rhayader Rhondda Rhoose Rhosllanerchrugog Rhostyllen Rhuddlan Rhyl Rhymney Risca Rochdale Rogiet Rosset Ruabon Rutherglen Ruthin Saundersfoot Seven Sheffield Shotton Sisters Soughton Southampton Southend Southgate St Stenhousemuir Stirling Stoke Street Sunderland Swansea Swindon Taff Talbot Telford Tenby Tongwynlais Tonyrefail Town Tredegar Treharris Trimsaran Tumble Tydfil Tywyn Underwood Usk Vale Valley Viewpark Village Wakefield Warrington Well Wells Welshpool Whelston Wigan Wishaw Worthing Wrexham  Ynysybwl York Ystradgynlais)
    
    def town
      "#{@@town.rand}"
    end
    
    
    ## List of UK counties
    
    @@counties = ["London", "Bedfordshire", "Buckinghamshire", "Cambridgeshire", "Cheshire", "Cornwall and Isles of Scilly", "Cumbria", "Derbyshire", "Devon", "Dorset", "Durham", "East Sussex", "Essex", "Gloucestershire", "Greater London", "Greater Manchester", "Hampshire", "Hertfordshire", "Kent", "Lancashire", "Leicestershire", "Lincolnshire", "Merseyside", "Norfolk", "North Yorkshire", "Northamptonshire", "Northumberland", "Nottinghamshire", "Oxfordshire", "Shropshire", "Somerset", "South Yorkshire", "Staffordshire", "Suffolk", "Surrey", "Tyne and Wear", "Warwickshire", "West Midlands", "West Sussex", "West Yorkshire", "Wiltshire", "Worcestershire", "Flintshire", "Glamorgan", "Merionethshire", "Monmouthshire", "Montgomeryshire", "Pembrokeshire", "Radnorshire", "Anglesey", "Breconshire", "Caernarvonshire", "Cardiganshire", "Carmarthenshire", "Denbighshire", "Kirkcudbrightshire", "Lanarkshire", "Midlothian", "Moray", "Nairnshire", "Orkney", "Peebleshire", "Perthshire", "Renfrewshire", "Ross & Cromarty", "Roxburghshire", "Selkirkshire", "Shetland", "Stirlingshire", "Sutherland", "West Lothian", "Wigtownshire", "Aberdeenshire", "Angus", "Argyll", "Ayrshire", "Banffshire", "Berwickshire", "Bute", "Caithness", "Clackmannanshire", "Dumfriesshire", "Dumbartonshire", "East Lothian", "Fife", "Inverness", "Kincardineshire", "Kinross-shire"]
    
    def county
      "#{@@counties.rand}"
    end

    # Returns a string providing something in the general form of a UK post code.  Like the zip codes, this might
    # not actually be valid. Doesn't cover London whose codes are like "SE1".
      
    @@postcode_region = %w(AB AL B BA BB BD BH BL BN BR BS BT CA CB CF CH CM CO CR CT CV CW DA DD DE DG DH DL DN DT DY E EC EH EN EX FK FY G GL GU HA HD HG HP HR HS HU HX IG IP IV KA KT KW KY L LA LD LE LL LN LS LU M ME MK ML N NE NG NN NP NR NW OL OX PA PE PH PL PO PR RG RH RM S SA SE SG SK SL SM SN SO SP SR SS ST SW SY TA TD TF TN TQ TR TS TW UB W WA WC WD WF WN WR WS WV YO ZE)
    
    def uk_post_code
      number_1  = rand(100).to_s
      number_2  = rand(9).to_s
      end_letters = ("AA".."ZZ").to_a.rand

      return "#{@@postcode_region.rand}#{number_1} #{number_2}#{end_letters}"
    end

    # from technoweenie: http://svn.techno-weenie.net/projects/plugins/us_states/lib/us_states.rb
    @@us_states = [["Alaska", "AK"], ["Alabama", "AL"], ["Arkansas", "AR"], ["Arizona", "AZ"], 
                   ["California", "CA"], ["Colorado", "CO"], ["Connecticut", "CT"], ["District of Columbia", "DC"], 
                   ["Delaware", "DE"], ["Florida", "FL"], ["Georgia", "GA"], ["Hawaii", "HI"], ["Iowa", "IA"], 
                   ["Idaho", "ID"], ["Illinois", "IL"], ["Indiana", "IN"], ["Kansas", "KS"], ["Kentucky", "KY"], 
                   ["Louisiana", "LA"], ["Massachusetts", "MA"], ["Maryland", "MD"], ["Maine", "ME"], ["Michigan", "MI"], 
                   ["Minnesota", "MN"], ["Missouri", "MO"], ["Mississippi", "MS"], ["Montana", "MT"], ["North Carolina", "NC"], 
                   ["North Dakota", "ND"], ["Nebraska", "NE"], ["New Hampshire", "NH"], ["New Jersey", "NJ"], 
                   ["New Mexico", "NM"], ["Nevada", "NV"], ["New York", "NY"], ["Ohio", "OH"], ["Oklahoma", "OK"], 
                   ["Oregon", "OR"], ["Pennsylvania", "PA"], ["Rhode Island", "RI"], ["South Carolina", "SC"], ["South Dakota", "SD"], 
                   ["Tennessee", "TN"], ["Texas", "TX"], ["Utah", "UT"], ["Virginia", "VA"], ["Vermont", "VT"], 
                   ["Washington", "WA"], ["Wisconsin", "WI"], ["West Virginia", "WV"], ["Wyoming", "WY"]]                    

    # Returns a state 2-character abbreviation
    # Random.state = "IL"
    
    def state
      @@us_states.rand[1]
    end

    # Returns a full state name
    #Random.state_full = "Texas"

    def state_full
      @@us_states.rand[0]   
    end

    # from http://siteresources.worldbank.org/DATASTATISTICS/Resources/CLASS.XLS
    @@countries = ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", 
                  "Austria", "Azerbaijan", "Bahamas, The", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", 
                  "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", 
                  "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Channel Islands", "Chile", "China", "Colombia", "Comoros", "Congo, Dem. Rep.", 
                  "Congo, Rep.", "Costa Rica", "Côte d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", 
                  "Egypt, Arab Rep.", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Faeroe Islands", "Fiji", "Finland", "France", "French Polynesia", 
                  "Gabon", "Gambia, The", "Georgia", "Germany", "Ghana", "Greece", "Greenland", "Grenada", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", 
                  "Honduras", "Hong Kong, China", "Hungary", "Iceland", "India", "Indonesia", "Iran, Islamic Rep.", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy", "Jamaica", 
                  "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Dem. Rep.", "Korea, Rep.", "Kuwait", "Kyrgyz Republic", "Lao PDR", "Latvia", "Lebanon", "Lesotho", 
                  "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macao, China", "Macedonia, FYR", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", 
                  "Marshall Islands", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Fed. Sts.", "Moldova", "Monaco", "Mongolia", "Montenegro", "Morocco", 
                  "Mozambique", "Myanmar", "Namibia", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", 
                  "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal",
                  "Puerto Rico", "Qatar", "Romania", "Russian Federation", "Rwanda", "Samoa", "San Marino", "São Tomé and Principe", "Saudi Arabia", "Senegal", "Serbia", 
                  "Seychelles", "Sierra Leone", "Singapore", "Slovak Republic", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "Spain", "Sri Lanka", "St. Kitts and Nevis", 
                  "St. Lucia", "St. Vincent and the Grenadines", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Tajikistan", "Tanzania", "Thailand", 
                  "Timor-Leste", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", 
                  "United States", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela, RB", "Vietnam", "Virgin Islands (U.S.)", "West Bank and Gaza", "Yemen, Rep.", "Zambia", "Zimbabwe"]

    # Returns a country name, as listed by the World Bank
    #
    #Random.country = "Kenya"
    
    def country
      @@countries.rand
    end

    @@cities = %w(Midway Mount\ Pleasant Greenwood Franklin Oak Grove Centerville Salem Georgetown Fairview Riverside Rotorua Tauranga Whakatane Taupo Wanganui 
                  Nababeep Aggeneys Pofadder Polokwane Bela Bela Goukamma Karatara Tswane Prieska Upington Hoopstad Bultfontein Wesselsbron Bothaville Trompsburg 
                  Henneman Musina Ogies Kgatlahong Tembisa Tekoza Sebokeng Muntaung Umnkomaaz)

    # Returns a generic city name, with an attempt to have some internationl appeal
    #
    # Random.city = "Tekoza"
     
    def city
      @@cities.rand
    end
  end
end
