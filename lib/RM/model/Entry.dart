class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry(
    'Heading 1',
    <Entry>[
      Entry(
        'Sub Heading 1',
        <Entry>[
          Entry('Row 1'),
          Entry('Row 2'),
          Entry('Row 3'),
        ],
      ),
      Entry('Sub Heading 2'),
      Entry('Sub Heading 3'),
    ],
  ),
  Entry(
    'Heading 2',
    <Entry>[
      Entry('Sub Heading 1'),
      Entry('Sub Heading 2'),
    ],
  ),
  Entry(
    'Heading 3',
    <Entry>[
      Entry('Sub Heading 1'),
      Entry('Sub Heading 2'),
      Entry(
        'Sub Heading 3',
        <Entry>[
          Entry('Row 1'),
          Entry('Row 2'),
          Entry('Row 3'),
          Entry('Row 4'),
        ],
      ),
    ],
  ),
];
