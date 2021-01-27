INDEX($file1[]; .uid) as $dict
  | inputs
  | . + $dict[.uid]
