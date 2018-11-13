


angular.module('app')
  .constant('StyleConfig', {
    projectName: 'R-CORD',
    favicon: 'cord-favicon.png',
    background: 'cord-bg.jpg',
    payoff: 'Your VNF orchestrator',
    logo: 'cord-logo.png',
    routes: [
        {
            label: 'Slices',
            state: 'xos.core.slice',
        },
        {
            label: 'Nodes',
            state: 'xos.core.node',
        },
        {
            label: 'Instances',
            state: 'xos.core.instance',
        },
    ]
});