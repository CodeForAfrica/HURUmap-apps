import React from 'react';
import ReactDOM from 'react-dom';

import App from './App';
import Nav from './Nav';

ReactDOM.render(<Nav />, document.getElementById('header_menu'));
ReactDOM.render(<App />, document.getElementById('root'));
