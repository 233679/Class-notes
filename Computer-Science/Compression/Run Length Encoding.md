---
tags:
  - Computer_Science/Compression
aliases:
  - RLE
---
# Run Length Encoding
[[Computer-Science/Compression/Run Length Encoding|Run Length Encoding]] is a type of [[Computer-Science/Compression/Lossless|Lossless]], that reduces the size by finding repeating elements within the file & replaces the multiple occurrences with data that specifies "repeat this x times".
A good use case for [[Computer-Science/Compression/Run Length Encoding|RLE]] is images that use a limited colour pallet, with continuous sections, as it there is lots of repeated data.

However, [[Computer-Science/Compression/Run Length Encoding|RLE]] does not work very well in many real world use cases, as identical data is not often repeated continuously.