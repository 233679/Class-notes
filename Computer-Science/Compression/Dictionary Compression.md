---
tags:
  - Computer_Science/Compression
---
# Dictionary Compression
[[Computer-Science/Compression/Dictionary Compression|Dictionary Compression]] is a type of [[Computer-Science/Compression/Lossless|Lossless Compression]], where often repeated sections of data are stored separately (in a dictionary that is stored in the compressed file), and the section/sequence that is repeated within the file can be replaced with a reference to the dictionary.

Unlike [[Computer-Science/Compression/Run Length Encoding|Run Length Encoding]], [[Computer-Science/Compression/Dictionary Compression|Dictionary Compression]] does rely on continuous identical data, which makes it more applicable to real work scenarios.