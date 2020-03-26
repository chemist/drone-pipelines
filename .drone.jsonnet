local test = import './test.libsonnet';

[
  {
    kind: 'pipeline',
    type: 'kubernetes',
    name: 'bender',
    steps: [
      {
        name: 'greeting',
        image: 'alpine',
        commands: test.commands,
        //        commands: [
        //          'echo hello',
        //          'echo jsonnet',
        //          'echo jsonnet',
        //          'echo world',
        //        ],
      },
    ],
  },
]
