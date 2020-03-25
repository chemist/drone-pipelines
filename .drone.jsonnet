[
  {
    kind: 'pipeline',
    name: 'bender',
    type: 'kubernetes',
    steps: [
      {
        image: 'alpine',
        name: 'greeting',
        environment: {
          bye: 'bye',
          commit: '${DRONE_COMMIT_SHA:0:8}',
          hello: 'hello all',
        },
        commands: [
          'echo hello',
          'echo jsonnet',
          'echo world',
          'echo $${hello}',
          'echo $${bye}',
          'echo $${commit}',
        ],
      },
    ],
  },
]
