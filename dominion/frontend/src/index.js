import React from 'react';
import ReactDOM from 'react-dom';

import { library } from '@fortawesome/fontawesome-svg-core';
import { fab } from '@fortawesome/free-brands-svg-icons';

import App from './App';

library.add(fab);

ReactDOM.render(<App />, document.getElementById('root'));
