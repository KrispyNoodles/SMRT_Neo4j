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
#### 2. Calculating shortest total travel time between 'Boon Lay' and 'Punggol'

```cypher
MATCH path = (start:Station {name: 'Boon Lay'})-[:CONNECTED_TO*1..25]->(end:Station {name: 'Punggol'})
 
WITH path, reduce(totalTime = 0, rel IN relationships(path) | totalTime + rel.travel_time) AS total_travel_time 
 
RETURN path, total_travel_time 
ORDER BY total_travel_time ASC 
LIMIT 1
```

### 3. Calculating the Least Number of Stations to Travel Between 'Boon Lay' and 'Punggol'
```cypher
MATCH path = shortestPath((start:Station)-[:CONNECTED_TO*]->(end:Station))
WHERE start.name="Boon Lay" AND end.name="Punggol"
RETURN path
```

## Contact
If you have any questions, suggestions, or feedback, feel free to reach out:
Email: Joeylimjunfeng@gmail.com

## Acknowledgments

- 🛤️ **Reddit Community:** A special thanks to the [r/singapore](https://www.reddit.com/r/singapore/comments/10wkygf/mrt_map_with_transfer_timing/) forum for providing valuable data on transfer timings between MRT stations. Their contributions significantly enhanced the accuracy and reliability of the **SMRT_Neo4j** project. [Excel Spreadsheet](https://docs.google.com/spreadsheets/d/1e-Tuf6rHBFsgsuFN7XqbFL8ec_vdRjQw/edit?gid=459175256#gid=459175256)
