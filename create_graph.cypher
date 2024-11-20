// ==================================================
// 1. Creating Station Nodes
// ==================================================

// Use UNWIND to efficiently create multiple Station nodes
UNWIND [
    //North South Line
    {name: 'Bukit Batok', code: 'NS2', lines: ['North South Line']},
    {name: 'Bukit Gombak', code: 'NS3', lines: ['North South Line']},
    {name: 'Yew Tee', code: 'NS5', lines: ['North South Line']},
    {name: 'Kranji', code: 'NS7', lines: ['North South Line']},
    {name: 'Marsiling', code: 'NS8', lines: ['North South Line']},
    {name: 'Admiralty', code: 'NS10', lines: ['North South Line']},
    {name: 'Sembawang', code: 'NS11', lines: ['North South Line']},
    {name: 'Yishun', code: 'NS13', lines: ['North South Line']},
    {name: 'Khatib', code: 'NS14', lines: ['North South Line']},
    {name: 'Yio Chu Kang', code: 'NS15', lines: ['North South Line']},
    {name: 'Ang Mo Kio', code: 'NS16', lines: ['North South Line']},
    {name: 'Braddell', code: 'NS18', lines: ['North South Line']},
    {name: 'Toa Payoh', code: 'NS19', lines: ['North South Line']},
    {name: 'Novena', code: 'NS20', lines: ['North South Line']},
    {name: 'Canbera', code: 'NS20', lines: ['North South Line']},
    {name: 'Somerset', code: 'NS23', lines: ['North South Line']},
    {name: 'Marina South Pier', code: 'NS28', lines: ['North South Line']},

    // Train Transfers
    {name: 'Bukit Panjang_DT', code: 'DT1', lines: ['Downtown Line']},
    {name: 'Bukit Panjang_BP', code: 'BP6', lines: ['Bukit Panjang LRT']},
    {name: 'Choa Chu Kang_NS', code: 'NS4', lines: ['North South Line']},
    {name: 'Choa Chu Kang_BP', code: 'BP1', lines: ['Bukit Panjang LRT']},
    {name: 'Bishan_NS', code: 'NS17', lines: ['North South Line']},
    {name: 'Bishan_CC', code: 'CC15', lines: ['Circle Line']},
    {name: 'Woodlands_NS', code: 'NS9', lines: ['North South Line']},
    {name: 'Woodlands_TE', code: 'TE2', lines: ['Thomson Line']},
    {name: 'Newton_NS', code: 'NS21', lines: ['North South Line']},
    {name: 'Newton_DT', code: 'DT11', lines: ['Downtown Line']},
    {name: 'Orchard_NS', code: 'NS22', lines: ['North South Line']},
    {name: 'Orchard_TE', code: 'TE14', lines: ['Thomson Line']},
    {name: 'Dhoby Ghuat_NS', code: 'NS24', lines: ['North South Line']},
    {name: 'Dhoby Ghuat_NE', code: 'NE6', lines: ['North East Line']},
    {name: 'Dhoby Ghuat_CC', code: 'CC1', lines: ['Circle Line']},
    {name: 'City Hall_NS', code: 'NS25', lines: ['North South Line']},
    {name: 'City Hall_EW', code: 'EW13', lines: ['East West Line']},
    {name: 'Raffles Place_NS', code: 'NS26', lines: ['North South Line']},
    {name: 'Raffles Place_EW', code: 'EW14', lines: ['East West Line']},
    {name: 'Marina Bay_NS', code: 'NS27', lines: ['North South Line']},
    {name: 'Marina Bay_TE', code: 'TE20', lines: ['Thomson Line']},
    {name: 'Marina Bay_CC', code: 'CE2', lines: ['Circle Line']},
    {name: 'Bugis_EW', code: 'EW12', lines: ['East West Line']},
    {name: 'Bugis_DT', code: 'DT14', lines: ['Downtown Line']},
    {name: 'Outram Park_EW', code: 'EW16', lines: ['East West Line']},
    {name: 'Outram Park_NE', code: 'NE3', lines: ['North East Line']},
    {name: 'Outram Park_TE', code: 'TE17', lines: ['Thomson Line']},
    {name: 'Buona Vista_EW', code: 'EW21', lines: ['East West Line']},
    {name: 'Buona Vista_CC', code: 'CC22', lines: ['Circle Line']},
    {name: 'Tampines_EW', code: 'EW2', lines: ['East West Line']},
    {name: 'Tampines_DT', code: 'DT32', lines: ['Downtown Line']},
    {name: 'Paya Lebar_EW', code: 'EW8', lines: ['East West Line']},
    {name: 'Paya Lebar_CC', code: 'CC9', lines: ['Circle Line']},
    {name: 'Jurong East_EW', code: 'EW24', lines: ['East West Line']},
    {name: 'Jurong East_NS', code: 'NS1', lines: ['North South Line']},
    {name: 'Sungei Bedok_DT', code: 'DT37', lines: ['Downtown Line']},
    {name: 'Sungei Bedok_TE', code: 'TE31', lines: ['Thomson Line']},
    {name: 'Expo_EW', code: 'CG1', lines: ['East West Line']},
    {name: 'Expo_DT', code: 'DT35', lines: ['Downtown Line']},
    {name: 'Habourfront_NE', code: 'NE1', lines: ['North East Line']},
    {name: 'Habourfront_CC', code: 'CC29', lines: ['Circle Line']},
    {name: 'Chinatown_NE', code: 'NE4', lines: ['North East Line']},
    {name: 'Chinatown_DT', code: 'DT19', lines: ['Downtown Line']},
    {name: 'Little India_NE', code: 'NE7', lines: ['North East Line']},
    {name: 'Little India_DT', code: 'DT12', lines: ['Downtown Line']},
    {name: 'Serangoon_NE', code: 'NE12', lines: ['North East Line']},
    {name: 'Serangoon_CC', code: 'CC13', lines: ['Circle Line']},
    {name: 'Caldecott_TE', code: 'TE9', lines: ['Thomson Line']},
    {name: 'Caldecott_CC', code: 'CC17', lines: ['Circle Line']},
    {name: 'Botanic Gardens_DT', code: 'DT9', lines: ['Downtown Line']},
    {name: 'Botanic Gardens_CC', code: 'CC19', lines: ['Circle Line']},
    {name: 'Stevens_DT', code: 'DT10', lines: ['Downtown Line']},
    {name: 'Stevens_TE', code: 'TE11', lines: ['Thomson Line']},
    {name: 'Promenade_DT', code: 'DT15', lines: ['Downtown Line']},
    {name: 'Promenade_CC', code: 'CC4', lines: ['Circle Line']},
    {name: 'MacPherson_CC', code: 'CC10', lines: ['Circle Line']},
    {name: 'MacPherson_DT', code: 'DT26', lines: ['Downtown Line']},

    // East West Line
    {name: 'Pasir Ris', code: 'EW1', lines: ['East West Line']},
    {name: 'Simei', code: 'EW3', lines: ['East West Line']},
    {name: 'Tanah Merah', code: 'EW4', lines: ['East West Line']},
    {name: 'Bedok', code: 'EW5', lines: ['East West Line']},
    {name: 'Kembangan', code: 'EW6', lines: ['East West Line']},
    {name: 'Eunos', code: 'EW7', lines: ['East West Line']},
    {name: 'Aljunied', code: 'EW9', lines: ['East West Line']},
    {name: 'Kallang', code: 'EW10', lines: ['East West Line']},
    {name: 'Lavender', code: 'EW11', lines: ['East West Line']},
    {name: 'Tanjong Pagar', code: 'EW15', lines: ['East West Line']},
    {name: 'Tiong Bahru', code: 'EW17', lines: ['East West Line']},
    {name: 'Redhill', code: 'EW18', lines: ['East West Line']},
    {name: 'Queenstown', code: 'EW19', lines: ['East West Line']},
    {name: 'Commonwealth', code: 'EW20', lines: ['East West Line']},
    {name: 'Dover', code: 'EW22', lines: ['East West Line']},
    {name: 'Clementi', code: 'EW23', lines: ['East West Line']},
    {name: 'Chinese Garden', code: 'EW25', lines: ['East West Line']},
    {name: 'Lakeside', code: 'EW26', lines: ['East West Line']},
    {name: 'Boon Lay', code: 'EW27', lines: ['East West Line']},
    {name: 'Pioneer', code: 'EW28', lines: ['East West Line']},
    {name: 'Joo Koon', code: 'EW29', lines: ['East West Line']},
    {name: 'Gul Circle', code: 'EW30', lines: ['East West Line']},
    {name: 'Tuas Crescent', code: 'EW31', lines: ['East West Line']},
    {name: 'Tuas West Road', code: 'EW32', lines: ['East West Line']},
    {name: 'Tuas Link', code: 'EW33', lines: ['East West Line']},

    // North East Lines
    {name: 'Clarke Quay', code: 'NE5', lines: ['North East Line']},
    {name: 'Farrer Park', code: 'NE8', lines: ['North East Line']},
    {name: 'Boon Keng', code: 'NE9', lines: ['North East Line']},
    {name: 'Potong Pasir', code: 'NE10', lines: ['North East Line']},
    {name: 'Woodleigh', code: 'NE11', lines: ['North East Line']},
    {name: 'Kovan', code: 'NE13', lines: ['North East Line']},
    {name: 'Hougang', code: 'NE14', lines: ['North East Line']},
    {name: 'Buangkok', code: 'NE15', lines: ['North East Line']},
    {name: 'Sengkang', code: 'NE16STC', lines: ['North East Line']},
    {name: 'Punggol', code: 'NE17PTC', lines: ['North East Line']},
    {name: 'Punggol Coast', code: 'NE18', lines: ['North East Line']},

    // Circle Lines  
    {name: 'Changi Airport', code: 'CG2', lines: ['Circle Line']},
    {name: 'Bras Basah', code: 'CC2', lines: ['Circle Line']},
    {name: 'Esplanade', code: 'CC3', lines: ['Circle Line']},
    {name: 'Nicoll Highway', code: 'CC5', lines: ['Circle Line']},
    {name: 'Stadium', code: 'CC6', lines: ['Circle Line']},
    {name: 'Mountbatten', code: 'CC7', lines: ['Circle Line']},
    {name: 'Dakota', code: 'CC8', lines: ['Circle Line']},
    {name: 'Tai Seng', code: 'CC11', lines: ['Circle Line']},
    {name: 'Bartley', code: 'CC12', lines: ['Circle Line']},
    {name: 'Lorong Chuan', code: 'CC14', lines: ['Circle Line']},
    {name: 'Marymount', code: 'CC16', lines: ['Circle Line']},
    {name: 'Farrer Road', code: 'CC20', lines: ['Circle Line']},
    {name: 'Holland Village', code: 'CC21', lines: ['Circle Line']},
    {name: 'one-north', code: 'CC23', lines: ['Circle Line']},
    {name: 'Kent Ridge', code: 'CC24', lines: ['Circle Line']},
    {name: 'Haw Par Villa', code: 'CC25', lines: ['Circle Line']},
    {name: 'Pasir Panjang', code: 'CC26', lines: ['Circle Line']},
    {name: 'Labrador Park', code: 'CC27', lines: ['Circle Line']},
    {name: 'Telok Blangah', code: 'CC28', lines: ['Circle Line']},

    // Downtown Lines
    {name: 'Cashew', code: 'DT2', lines: ['Downtown Line']},
    {name: 'Hillview', code: 'DT3', lines: ['Downtown Line']},
    {name: 'Hume', code: 'DT4', lines: ['Downtown Line']},
    {name: 'Beauty World', code: 'DT5', lines: ['Downtown Line']},
    {name: 'King Albert Park', code: 'DT6', lines: ['Downtown Line']},
    {name: 'Sixth Avenue', code: 'DT7', lines: ['Downtown Line']},
    {name: 'Tan Kah Kee', code: 'DT8', lines: ['Downtown Line']},
    {name: 'Rochor', code: 'DT13', lines: ['Downtown Line']},
    {name: 'Bayfront', code: 'DT16CE1', lines: ['Downtown Line']},
    {name: 'Downtown', code: 'DT17', lines: ['Downtown Line']},
    {name: 'Telok Ayer', code: 'DT18', lines: ['Downtown Line']},
    {name: 'Fort Canning', code: 'DT20', lines: ['Downtown Line']},
    {name: 'Bencoolen', code: 'DT21', lines: ['Downtown Line']},
    {name: 'Jalan Besar', code: 'DT22', lines: ['Downtown Line']},
    {name: 'Bendemeer', code: 'DT23', lines: ['Downtown Line']},
    {name: 'Geylang Bahru', code: 'DT24', lines: ['Downtown Line']},
    {name: 'Mattar', code: 'DT25', lines: ['Downtown Line']},
    {name: 'Ubi', code: 'DT27', lines: ['Downtown Line']},
    {name: 'Kaki Bukit', code: 'DT28', lines: ['Downtown Line']},
    {name: 'Bedok North', code: 'DT29', lines: ['Downtown Line']},
    {name: 'Bedok Reservoir', code: 'DT30', lines: ['Downtown Line']},
    {name: 'Tampines West', code: 'DT31', lines: ['Downtown Line']},
    {name: 'Tampines East', code: 'DT33', lines: ['Downtown Line']},
    {name: 'Upper Changi', code: 'DT34', lines: ['Downtown Line']},
    {name: 'Xilin', code: 'DT36', lines: ['Downtown Line']},

    // Thomson Lines
    {name: 'Woodlands North', code: 'TE1', lines: ['Thomson Line']},
    {name: 'Woodlands South', code: 'TE3', lines: ['Thomson Line']},
    {name: 'Springleaf', code: 'TE5', lines: ['Thomson Line']},
    {name: 'Lentor', code: 'TE6', lines: ['Thomson Line']},
    {name: 'Mayflower', code: 'TE7', lines: ['Thomson Line']},
    {name: 'Upper Thomson', code: 'TE8', lines: ['Thomson Line']},
    {name: 'Bright Hill', code: 'TE7', lines: ['Thomson Line']},
    {name: 'Mount Pleasant', code: 'TE10', lines: ['Thomson Line']},
    {name: 'Napier', code: 'TE12', lines: ['Thomson Line']},
    {name: 'Orchard Boulevard', code: 'TE13', lines: ['Thomson Line']},
    {name: 'Great World', code: 'TE15', lines: ['Thomson Line']},
    {name: 'Havelock', code: 'TE16', lines: ['Thomson Line']},
    {name: 'Maxwell', code: 'TE18', lines: ['Thomson Line']},
    {name: 'Shenton Way', code: 'TE19', lines: ['Thomson Line']},
    {name: 'Marina South', code: 'TE21', lines: ['Thomson Line']},
    {name: 'Gardens by the Bay', code: 'TE22', lines: ['Thomson Line']},
    {name: 'Tanjong Rhu', code: 'TE23', lines: ['Thomson Line']},
    {name: 'Katong Park', code: 'TE24', lines: ['Thomson Line']},
    {name: 'Tanjong Katong', code: 'TE25', lines: ['Thomson Line']},
    {name: 'Marine Parade', code: 'TE26', lines: ['Thomson Line']},
    {name: 'Marine Terrace', code: 'TE27', lines: ['Thomson Line']},
    {name: 'Siglap', code: 'TE28', lines: ['Thomson Line']},
    {name: 'Bayshore', code: 'TE29', lines: ['Thomson Line']},
    {name: 'Bedok South', code: 'TE30', lines: ['Thomson Line']},

    // LRT Line
    {name: 'South View', code: 'BP2', lines: ['Bukit Panjang LRT']},
    {name: 'Keat Hong', code: 'BP3', lines: ['Bukit Panjang LRT']},
    {name: 'Teck Whye', code: 'BP4', lines: ['Bukit Panjang LRT']},
    {name: 'Phoenix', code: 'BP5', lines: ['Bukit Panjang LRT']}
] AS station
MERGE (s:Station {name: station.name})
SET s.code = station.code,
    s.lines = station.lines;

// ==================================================
// 2. Creating CONNECTED_TO Relationships
// ==================================================

// Use UNWIND to efficiently create multiple CONNECTED_TO relationships
UNWIND [

    // Transfer of trains (assuming 5mins waiting for each train)
    {from: 'Choa Chu Kang_NS', to: 'Choa Chu Kang_BP', line: ['North South Line', 'Bukit Panjang LRT'], travel_time: 7},
    {from: 'Bukit Panjang_DT', to: 'Bukit Panjang_BP', line: ['Downtown Line', 'Bukit Panjang LRT'], travel_time: 10},
    {from: 'Bishan_NS', to: 'Bishan_CC', line: ['North South Line', 'Circle Line'], travel_time: 8},
    {from: 'Woodlands_NS', to: 'Woodlands_TE', line: ['North South Line', 'Thomson Line'], travel_time: 10},
    {from: 'Newton_NS', to: 'Newton_DT', line: ['North South Line', 'Downtown Line'], travel_time: 9},
    {from: 'Orchard_NS', to: 'Orchard_TE', line: ['North South Line', 'Thomson Line'], travel_time: 8},
    {from: 'Dhoby Ghuat_NS', to: 'Dhoby Ghuat_NE', line: ['North South Line', 'North East Line'], travel_time: 8},
    {from: 'Dhoby Ghuat_NE', to: 'Dhoby Ghuat_CC', line: ['North East Line', 'Circle Line'], travel_time: 8},
    {from: 'Dhoby Ghuat_CC', to: 'Dhoby Ghuat_NS', line: ['Circle Line', 'North South Line'], travel_time: 7},
    {from: 'City Hall_NS', to: 'City Hall_EW', line: ['North South Line', 'East West Line'], travel_time: 6},
    {from: 'Raffles Place_NS', to: 'Raffles Place_EW', line: ['North South Line', 'East West Line'], travel_time: 6},
    {from: 'Marina Bay_NS', to: 'Marina Bay_TE', line: ['North South Line', 'Thomson Line'], travel_time: 8},
    {from: 'Marina Bay_TE', to: 'Marina Bay_CC', line: ['Thomson Line', 'Circle Line'], travel_time: 10},
    {from: 'Marina Bay_NS', to: 'Marina Bay_CC', line: ['North South Line', 'Circle Line'], travel_time: 10},
    {from: 'Bugis_EW', to: 'Bugis_DT', line: ['East West Line', 'Downtown Line'], travel_time: 9},
    {from: 'Outram Park_EW', to: 'Outram Park_NE', line: ['East West Line', 'North East Line'], travel_time: 8},
    {from: 'Outram Park_NE', to: 'Outram Park_TE', line: ['North East Line', 'Thomson Line'], travel_time: 9},
    {from: 'Outram Park_EW', to: 'Outram Park_TE', line: ['East West Line', 'Thomson Line'], travel_time: 7},
    {from: 'Buona Vista_EW', to: 'Buona Vista_CC', line: ['East West Line', 'Circle Line'], travel_time: 8},
    {from: 'Tampines_EW', to: 'Tampines_DT', line: ['East West Line', 'Downtown Line'], travel_time: 11},
    {from: 'Paya Lebar_EW', to: 'Paya Lebar_CC', line: ['East West Line', 'Circle Line'], travel_time: 8},
    {from: 'Jurong East_EW', to: 'Jurong East_NS', line: ['East West Line', 'North South Line'], travel_time: 5},
    
    // yet to confirm
    {from: 'Sungei Bedok_DT', to: 'Sungei Bedok_TE', line: ['Downtown Line', 'Thomson Line'], travel_time: 10},

    {from: 'Expo_EW', to: 'Expo_DT', line: ['East West Line', 'Downtown Line'], travel_time: 8},
    {from: 'Habourfront_NE', to: 'Habourfront_CC', line: ['North East Line', 'Circle Line'], travel_time: 7},
    {from: 'Chinatown_NE', to: 'Chinatown_DT', line: ['North East Line', 'Downtown Line'], travel_time: 7},
    {from: 'Little India_NE', to: 'Little India_DT', line: ['North East Line', 'Downtown Line'], travel_time: 8},
    {from: 'Serangoon_NE', to: 'Serangoon_CC', line: ['North East Line', 'Circle Line'], travel_time: 8},
    {from: 'Caldecott_TE', to: 'Caldecott_CC', line: ['Thomson Line', 'Circle Line'], travel_time: 8},
    {from: 'Botanic Gardens_DT', to: 'Botanic Gardens_CC', line: ['Downtown Line', 'Circle Line'], travel_time: 8},
    {from: 'Stevens_DT', to: 'Stevens_TE', line: ['Downtown Line', 'Thomson Line'], travel_time: 7},
    {from: 'Promenade_DT', to: 'Promenade_CC', line: ['Downtown Line', 'Circle Line'], travel_time: 7},
    {from: 'MacPherson_CC', to: 'MacPherson_DT', line: ['Circle Line', 'Downtown Line'], travel_time: 6},

    // North South Line Connections
    // yet to confirm
    {from: 'Choa Chu Kang_BP', to: 'South View', line: 'Bukit Panjang LRT', travel_time: 2},
    {from: 'South View', to: 'Keat Hong', line: 'Bukit Panjang LRT', travel_time: 2},
    {from: 'Keat Hong', to: 'Teck Whye', line: 'Bukit Panjang LRT', travel_time: 2},
    {from: 'Teck Whye', to: 'Phoenix', line: 'Bukit Panjang LRT', travel_time: 2},
    {from: 'Phoenix', to: 'Bukit Panjang_BP', line: 'Bukit Panjang LRT', travel_time: 2},

    // North South Line Connections
    {from: 'Jurong East_NS', to: 'Bukit Batok', line: 'North South Line', travel_time: 3},
    {from: 'Bukit Batok', to: 'Bukit Gombak', line: 'North South Line', travel_time: 3},
    {from: 'Bukit Gombak', to: 'Choa Chu Kang_NS', line: 'North South Line', travel_time: 4},
    {from: 'Choa Chu Kang_NS', to: 'Yew Tee', line: 'North South Line', travel_time: 2},
    {from: 'Yew Tee', to: 'Kranji', line: 'North South Line', travel_time: 4},
    {from: 'Kranji', to: 'Marsiling', line: 'North South Line', travel_time: 3},
    {from: 'Marsiling', to: 'Woodlands_NS', line: 'North South Line', travel_time: 3},
    {from: 'Woodlands_NS', to: 'Admiralty', line: 'North South Line', travel_time: 3},
    {from: 'Admiralty', to: 'Sembawang', line: 'North South Line', travel_time: 3},
    {from: 'Sembawang', to: 'Canbera', line: 'North South Line', travel_time: 3},
    {from: 'Canbera', to: 'Yishun', line: 'North South Line', travel_time: 2},
    {from: 'Yishun', to: 'Khatib', line: 'North South Line', travel_time: 3},
    {from: 'Khatib', to: 'Yio Chu Kang', line: 'North South Line', travel_time: 5},
    {from: 'Yio Chu Kang', to: 'Ang Mo Kio', line: 'North South Line', travel_time: 3},
    {from: 'Ang Mo Kio', to: 'Bishan_NS', line: 'North South Line', travel_time: 3},
    {from: 'Bishan_NS', to: 'Braddell', line: 'North South Line', travel_time: 3},
    {from: 'Braddell', to: 'Toa Payoh', line: 'North South Line', travel_time: 2},
    {from: 'Toa Payoh', to: 'Novena', line: 'North South Line', travel_time: 3},
    {from: 'Novena', to: 'Newton_NS', line: 'North South Line', travel_time: 2},
    {from: 'Newton_NS', to: 'Orchard_NS', line: 'North South Line', travel_time: 3},
    {from: 'Orchard_NS', to: 'Somerset', line: 'North South Line', travel_time: 2},
    {from: 'Somerset', to: 'Dhoby Ghuat_NS', line: 'North South Line', travel_time: 2},
    {from: 'Dhoby Ghuat_NS', to: 'City Hall_NS', line: 'North South Line', travel_time: 2},
    {from: 'City Hall_NS', to: 'Raffles Place_NS', line: 'North South Line', travel_time: 3},
    {from: 'Raffles Place_NS', to: 'Marina Bay_NS', line: 'North South Line', travel_time: 2},
    {from: 'Marina Bay_NS', to: 'Marina South Pier', line: 'North South Line', travel_time: 3},
    
    // East West Line Connections
    {from: 'Pasir Ris', to: 'Tampines_EW', line: 'East West Line', travel_time: 5},
    {from: 'Tampines_EW', to: 'Simei', line: 'East West Line', travel_time: 2},
    {from: 'Simei', to: 'Tanah Merah', line: 'East West Line', travel_time: 4},
    {from: 'Tanah Merah', to: 'Expo_EW', line: 'East West Line', travel_time: 8},
    {from: 'Expo_EW', to: 'Changi Airport', line: 'East West Line', travel_time: 4},

    {from: 'Tanah Merah', to: 'Bedok', line: 'East West Line', travel_time: 3},
    {from: 'Bedok', to: 'Kembangan', line: 'East West Line', travel_time: 3},
    {from: 'Kembangan', to: 'Eunos', line: 'East West Line', travel_time: 2},
    {from: 'Eunos', to: 'Paya Lebar_EW', line: 'East West Line', travel_time: 2},
    {from: 'Paya Lebar_EW', to: 'Aljunied', line: 'East West Line', travel_time: 3},
    {from: 'Aljunied', to: 'Kallang', line: 'East West Line', travel_time: 2},
    {from: 'Kallang', to: 'Lavender', line: 'East West Line', travel_time: 3},
    {from: 'Lavender', to: 'Bugis_EW', line: 'East West Line', travel_time: 2},
    {from: 'Bugis_EW', to: 'City Hall_EW', line: 'East West Line', travel_time: 2},
    {from: 'City Hall_EW', to: 'Raffles Place_EW', line: 'East West Line', travel_time: 3},
    {from: 'Raffles Place_EW', to: 'Tanjong Pagar', line: 'East West Line', travel_time: 2},
    {from: 'Tanjong Pagar', to: 'Outram Park_EW', line: 'East West Line', travel_time: 3},
    {from: 'Outram Park_EW', to: 'Tiong Bahru', line: 'East West Line', travel_time: 2},
    {from: 'Tiong Bahru', to: 'Redhill', line: 'East West Line', travel_time: 3},
    {from: 'Redhill', to: 'Queenstown', line: 'East West Line', travel_time: 2},
    {from: 'Queenstown', to: 'Commonwealth', line: 'East West Line', travel_time: 2},
    {from: 'Commonwealth', to: 'Buona Vista_EW', line: 'East West Line', travel_time: 3},
    {from: 'Buona Vista_EW', to: 'Dover', line: 'East West Line', travel_time: 2},
    {from: 'Dover', to: 'Clementi', line: 'East West Line', travel_time: 3},
    {from: 'Clementi', to: 'Jurong East_EW', line: 'East West Line', travel_time: 5},
    {from: 'Jurong East_EW', to: 'Chinese Garden', line: 'East West Line', travel_time: 2},
    {from: 'Chinese Garden', to: 'Lakeside', line: 'East West Line', travel_time: 2},
    {from: 'Lakeside', to: 'Boon Lay', line: 'East West Line', travel_time: 3},
    {from: 'Boon Lay', to: 'Pioneer', line: 'East West Line', travel_time: 2},
    {from: 'Pioneer', to: 'Joo Koon', line: 'East West Line', travel_time: 3},
    {from: 'Joo Koon', to: 'Gul Circle', line: 'East West Line', travel_time: 4},
    {from: 'Gul Circle', to: 'Tuas Crescent', line: 'East West Line', travel_time: 2},
    {from: 'Tuas Crescent', to: 'Tuas West Road', line: 'East West Line', travel_time: 2},
    {from: 'Tuas West Road', to: 'Tuas Link', line: 'East West Line', travel_time: 3},

    // North East Line Connections
    {from: 'Habourfront_NE', to: 'Outram Park_NE', line: 'North East Line', travel_time: 4},
    {from: 'Outram Park_NE', to: 'Chinatown_NE', line: 'North East Line', travel_time: 1},
    {from: 'Chinatown_NE', to: 'Clarke Quay', line: 'North East Line', travel_time: 2},
    {from: 'Clarke Quay', to: 'Dhoby Ghuat_NE', line: 'North East Line', travel_time: 3},
    {from: 'Dhoby Ghuat_NE', to: 'Little India_NE', line: 'North East Line', travel_time: 1},
    {from: 'Little India_NE', to: 'Farrer Park', line: 'North East Line', travel_time: 1},
    {from: 'Farrer Park', to: 'Boon Keng', line: 'North East Line', travel_time: 2},
    {from: 'Boon Keng', to: 'Potong Pasir', line: 'North East Line', travel_time: 3},
    {from: 'Potong Pasir', to: 'Woodleigh', line: 'North East Line', travel_time: 1},
    {from: 'Woodleigh', to: 'Serangoon_NE', line: 'North East Line', travel_time: 2},
    {from: 'Serangoon_NE', to: 'Kovan', line: 'North East Line', travel_time: 3},
    {from: 'Kovan', to: 'Hougang', line: 'North East Line', travel_time: 2},
    {from: 'Hougang', to: 'Buangkok', line: 'North East Line', travel_time: 2},
    {from: 'Buangkok', to: 'Sengkang', line: 'North East Line', travel_time: 2},
    {from: 'Sengkang', to: 'Punggol', line: 'North East Line', travel_time: 3},

    // Punggol Coast not confirmed
    {from: 'Punggol', to: 'Punggol Coast', line: 'North East Line', travel_time: 2},
    
    // Circle Line Connections
    {from: 'Dhoby Ghuat_CC', to: 'Bras Basah', line: 'Circle Line', travel_time: 2},
    {from: 'Bras Basah', to: 'Esplanade', line: 'Circle Line', travel_time: 2},
    {from: 'Esplanade', to: 'Promenade_CC', line: 'Circle Line', travel_time: 2},
    {from: 'Marina Bay_CC', to: 'Bayfront', line: 'Circle Line', travel_time: 2},
    {from: 'Bayfront', to: 'Promenade_CC', line: 'Circle Line', travel_time: 6},

    {from: 'Promenade_CC', to: 'Nicoll Highway', line: 'Circle Line', travel_time: 4},
    {from: 'Nicoll Highway', to: 'Stadium', line: 'Circle Line', travel_time: 2},
    {from: 'Stadium', to: 'Mountbatten', line: 'Circle Line', travel_time: 2},
    {from: 'Mountbatten', to: 'Dakota', line: 'Circle Line', travel_time: 2},
    {from: 'Dakota', to: 'Paya Lebar_CC', line: 'Circle Line', travel_time: 2},
    {from: 'Paya Lebar_CC', to: 'MacPherson_CC', line: 'Circle Line', travel_time: 2},
    {from: 'MacPherson_CC', to: 'Tai Seng', line: 'Circle Line', travel_time: 2},
    {from: 'Tai Seng', to: 'Bartley', line: 'Circle Line', travel_time: 2},
    {from: 'Bartley', to: 'Serangoon_CC', line: 'Circle Line', travel_time: 3},
    {from: 'Serangoon_CC', to: 'Lorong Chuan', line: 'Circle Line', travel_time: 2},
    {from: 'Lorong Chuan', to: 'Bishan_CC', line: 'Circle Line', travel_time: 3},
    {from: 'Bishan_CC', to: 'Marymount', line: 'Circle Line', travel_time: 2},
    {from: 'Marymount', to: 'Caldecott_CC', line: 'Circle Line', travel_time: 3},
    {from: 'Caldecott_CC', to: 'Botanic Gardens_CC', line: 'Circle Line', travel_time: 4},
    {from: 'Botanic Gardens_CC', to: 'Farrer Road', line: 'Circle Line', travel_time: 2},
    {from: 'Farrer Road', to: 'Holland Village', line: 'Circle Line', travel_time: 3},
    {from: 'Holland Village', to: 'Buona Vista_CC', line: 'Circle Line', travel_time: 2},
    {from: 'Buona Vista_CC', to: 'one-north', line: 'Circle Line', travel_time: 2},
    {from: 'one-north', to: 'Kent Ridge', line: 'Circle Line', travel_time: 2},
    {from: 'Kent Ridge', to: 'Haw Par Villa', line: 'Circle Line', travel_time: 4},
    {from: 'Haw Par Villa', to: 'Pasir Panjang', line: 'Circle Line', travel_time: 3},
    {from: 'Pasir Panjang', to: 'Labrador Park', line: 'Circle Line', travel_time: 2},
    {from: 'Labrador Park', to: 'Telok Blangah', line: 'Circle Line', travel_time: 2},
    {from: 'Telok Blangah', to: 'Habourfront_CC', line: 'Circle Line', travel_time: 2},
    
    // Downtown Line Connections
    {from: 'Bukit Panjang_DT', to: 'Cashew', line: 'Downtown Line', travel_time: 2},
    {from: 'Cashew', to: 'Hillview', line: 'Downtown Line', travel_time: 2},

    // Hume not confirmed
    {from: 'Hillview', to: 'Hume', line: 'Downtown Line', travel_time: 2},
    {from: 'Hume', to: 'Beauty World', line: 'Downtown Line', travel_time: 2},

    {from: 'Beauty World', to: 'King Albert Park', line: 'Downtown Line', travel_time: 2},
    {from: 'King Albert Park', to: 'Sixth Avenue', line: 'Downtown Line', travel_time: 2},
    {from: 'Sixth Avenue', to: 'Tan Kah Kee', line: 'Downtown Line', travel_time: 2},
    {from: 'Tan Kah Kee', to: 'Botanic Gardens_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Botanic Gardens_DT', to: 'Stevens_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Stevens_DT', to: 'Newton_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Newton_DT', to: 'Little India_DT', line: 'Downtown Line', travel_time: 3},
    {from: 'Little India_DT', to: 'Rochor', line: 'Downtown Line', travel_time: 1},
    {from: 'Rochor', to: 'Bugis_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Bugis_DT', to: 'Promenade_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Promenade_DT', to: 'Bayfront', line: 'Downtown Line', travel_time: 2},
    {from: 'Bayfront', to: 'Downtown', line: 'Downtown Line', travel_time: 2},
    {from: 'Downtown', to: 'Telok Ayer', line: 'Downtown Line', travel_time: 1},
    {from: 'Telok Ayer', to: 'Chinatown_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Chinatown_DT', to: 'Fort Canning', line: 'Downtown Line', travel_time: 2},
    {from: 'Fort Canning', to: 'Bencoolen', line: 'Downtown Line', travel_time: 2},
    {from: 'Bencoolen', to: 'Jalan Besar', line: 'Downtown Line', travel_time: 1},
    {from: 'Jalan Besar', to: 'Bendemeer', line: 'Downtown Line', travel_time: 2},
    {from: 'Bendemeer', to: 'Geylang Bahru', line: 'Downtown Line', travel_time: 2},
    {from: 'Geylang Bahru', to: 'Mattar', line: 'Downtown Line', travel_time: 2},
    {from: 'Mattar', to: 'MacPherson_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'MacPherson_DT', to: 'Ubi', line: 'Downtown Line', travel_time: 2},
    {from: 'Ubi', to: 'Kaki Bukit', line: 'Downtown Line', travel_time: 2},
    {from: 'Kaki Bukit', to: 'Bedok North', line: 'Downtown Line', travel_time: 2},
    {from: 'Bedok North', to: 'Bedok Reservoir', line: 'Downtown Line', travel_time: 2},
    {from: 'Bedok Reservoir', to: 'Tampines West', line: 'Downtown Line', travel_time: 3},
    {from: 'Tampines West', to: 'Tampines_DT', line: 'Downtown Line', travel_time: 2},
    {from: 'Tampines_DT', to: 'Tampines East', line: 'Downtown Line', travel_time: 2},
    {from: 'Tampines East', to: 'Upper Changi', line: 'Downtown Line', travel_time: 3},
    {from: 'Upper Changi', to: 'Expo_DT', line: 'Downtown Line', travel_time: 2},

    // yet to confirm
    {from: 'Expo_DT', to: 'Changi Airport', line: 'Downtown Line', travel_time: 2},
    {from: 'Changi Airport', to: 'Xilin', line: 'Downtown Line', travel_time: 2},
    {from: 'Xilin', to: 'Sungei Bedok_DT', line: 'Downtown Line', travel_time: 2},
    
    // Thomson Line Connections
    // yet to confirm
    {from: 'Woodlands North', to: 'Woodlands_TE', line: 'Thomson Line', travel_time: 2},
    {from: 'Woodlands_TE', to: 'Woodlands South', line: 'Thomson Line', travel_time: 2},
    {from: 'Woodlands South', to: 'Springleaf', line: 'Thomson Line', travel_time: 5},
    {from: 'Springleaf', to: 'Lentor', line: 'Thomson Line', travel_time: 3},
    {from: 'Lentor', to: 'Mayflower', line: 'Thomson Line', travel_time: 2},
    {from: 'Mayflower', to: 'Bright Hill', line: 'Thomson Line', travel_time: 2},
    {from: 'Bright Hill', to: 'Upper Thomson', line: 'Thomson Line', travel_time: 2},
    {from: 'Upper Thomson', to: 'Caldecott_TE', line: 'Thomson Line', travel_time: 3},

    // Mount Pleasant yet to be added
    {from: 'Caldecott_TE', to: 'Mount Pleasant', line: 'Thomson Line', travel_time: 2},
    {from: 'Mount Pleasant', to: 'Stevens_TE', line: 'Thomson Line', travel_time: 2},
    
    {from: 'Stevens_TE', to: 'Napier', line: 'Thomson Line', travel_time: 3},
    {from: 'Napier', to: 'Orchard Boulevard', line: 'Thomson Line', travel_time: 2},
    {from: 'Orchard Boulevard', to: 'Orchard_TE', line: 'Thomson Line', travel_time: 2},
    {from: 'Orchard_TE', to: 'Great World', line: 'Thomson Line', travel_time: 2},
    {from: 'Great World', to: 'Havelock', line: 'Thomson Line', travel_time: 1},
    {from: 'Havelock', to: 'Outram Park_TE', line: 'Thomson Line', travel_time: 2},
    {from: 'Outram Park_TE', to: 'Maxwell', line: 'Thomson Line', travel_time: 2},
    {from: 'Maxwell', to: 'Shenton Way', line: 'Thomson Line', travel_time: 2},
    {from: 'Shenton Way', to: 'Marina Bay_TE', line: 'Thomson Line', travel_time: 1},

    // Marina South yet to be added
    {from: 'Marina Bay_TE', to: 'Marina South', line: 'Thomson Line', travel_time: 1},
    {from: 'Marina South', to: 'Gardens by the Bay', line: 'Thomson Line', travel_time: 2},

    {from: 'Gardens by the Bay', to: 'Tanjong Rhu', line: 'Thomson Line', travel_time: 4},
    {from: 'Tanjong Rhu', to: 'Katong Park', line: 'Thomson Line', travel_time: 2},
    {from: 'Katong Park', to: 'Tanjong Katong', line: 'Thomson Line', travel_time: 3},
    {from: 'Tanjong Katong', to: 'Marine Parade', line: 'Thomson Line', travel_time: 2},
    {from: 'Marine Parade', to: 'Marine Terrace', line: 'Thomson Line', travel_time: 2},
    {from: 'Marine Terrace', to: 'Siglap', line: 'Thomson Line', travel_time: 2},
    {from: 'Siglap', to: 'Bayshore', line: 'Thomson Line', travel_time: 2},

    // Bedok South and Sungei Bedok yet to be added
    {from: 'Bayshore', to: 'Bedok South', line: 'Thomson Line', travel_time: 2},
    {from: 'Bedok South', to: 'Sungei Bedok_TE', line: 'Thomson Line', travel_time: 2}
] AS rel
MATCH (from:Station {name: rel.from})
MATCH (to:Station {name: rel.to})
MERGE (from)-[:CONNECTED_TO {line: rel.line, travel_time: rel.travel_time}]->(to)
MERGE (to)-[:CONNECTED_TO {line: rel.line, travel_time: rel.travel_time}]->(from);

// ==================================================
// 3. Assigning Line-Specific Labels to Stations
// ==================================================

// Assign labels based on MRT lines

// North South Line - NSL
MATCH (s:Station)
WHERE 'North South Line' IN s.lines
SET s:NSL;

// East West Line - EWL
MATCH (s:Station)
WHERE 'East West Line' IN s.lines
SET s:EWL;

// North East Line - NEL
MATCH (s:Station)
WHERE 'North East Line' IN s.lines
SET s:NEL;

// Circle Line - CCL
MATCH (s:Station)
WHERE 'Circle Line' IN s.lines
SET s:CCL;

// Downtown Line - DTL
MATCH (s:Station)
WHERE 'Downtown Line' IN s.lines
SET s:DTL;

// Thomson Line - TEL
MATCH (s:Station)
WHERE 'Thomson Line' IN s.lines
SET s:TEL;

// Bukit Panjang LRT - BP
MATCH (s:Station)
WHERE 'Bukit Panjang LRT' IN s.lines
SET s:BP;

//NSL(RED), EWL (GREEN), NEL(PURPLE), CCL(ORANGE), DTL(BLUE), TEL(BROWN), BP(GREY)

// Done by Joey Lim Jun Feng and with assistance from ChatGPT (OpenAI, 20/11/2024)
