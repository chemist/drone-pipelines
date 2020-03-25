[
  {

    kind: 'pipeline',
    type: 'kubernetes',
    name: 'bender',
    steps: [
      {
        name: 'greeting',
        image: 'alpine',
        commands: [
          'echo hello',
          'echo jsonnet',
          'echo jsonnet',
          'echo world',
        ],
      },
    ],
  },
]
