# SMRT_Neo4j
Welcome to the Singapore MRT Network Graph Database! This project models the Singapore Mass Rapid Transit (MRT) system using Neo4j, a leading graph database. The aim is to represent MRT stations, their connections across different lines, and the travel times between them. This structured representation facilitates advanced queries, route optimization, and insightful analyses of the MRT network.

## Examples

Here are some practical examples to get you started:

### Sample Queries

#### 1. Viewing all Nodes

```cypher
MATCH (N)
RETURN N
```
#### 2. Calculating total travel time between 'Boon Lay' and 'Punggol'

```cypher
MATCH path = (start:Station {name: 'Boon Lay'})-[:CONNECTED_TO*1..25]->(end:Station {name: 'Punggol'})
 
WITH path, reduce(totalTime = 0, rel IN relationships(path) | totalTime + rel.travel_time) AS total_travel_time 
 
RETURN path, total_travel_time 
ORDER BY total_travel_time ASC 
LIMIT 1
```

#### 3.  Finding all stations on the Downtown Line
```cypher
MATCH (s:Station {line: 'Downtown Line'})
RETURN s.name
```

# Contact
If you have any questions, suggestions, or feedback, feel free to reach out:
Email: Joeylimjunfeng@gmail.com
