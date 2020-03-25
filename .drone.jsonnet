{
  kind: 'pipeline',
  metadata: {
    namespace: 'bender',
  },
  name: 'bender',
  steps: [
    {
      commands: [
        'echo hello',
        'echo jsonnet',
        'echo world',
        'echo $${hello}',
        'echo $${bye}',
        'echo $${commit}',
      ],
      environment: {
        bye: 'bye',
        commit: '${DRONE_COMMIT_SHA:0:8}',
        hello: 'hello all',
      },
      image: 'alpine',
      name: 'greeting',
    },
  ],
  type: 'kubernetes',
}
