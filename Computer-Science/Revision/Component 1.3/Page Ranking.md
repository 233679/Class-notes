---
tags:
  - Computer_science/Revision/1_3
---
# Page Ranking
Was developed to improve the returned search results so that the most relevant/useful are first.

Before [[#Page Ranking]] search results were generally returned based on the frequency of the search term that appear on a webpage.

> The exact algorithm does not need to be known for the exam. However, you need to vaguely know how it works.

The rank of a page is based upon the number of incoming and outgoing links.
Pages which have more incoming links are ranked higher.

The Algorithm requires multiple iterations to output reliable ranks for each page. This is partly due to the the initial rank of each page being assumed as "1" and then being refined by the algorithm over iterations.

