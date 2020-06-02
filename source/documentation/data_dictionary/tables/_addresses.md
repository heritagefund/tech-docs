##addresses

Table that contains an address.

```
id: UUID <<PK>>                              
line1: String
line2: String
line3: String
townCity: String
County: Sting
postcode: String
udprn: String               unique delivery point reference number
lat: String                 coordinates for geospatial data
long: String                coordinates for geospatial data
created_at: Timestamp
updated_at: Timestamp
```