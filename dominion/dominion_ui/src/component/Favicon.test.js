import React from 'react';
import ReactDOM from 'react-dom';
import Favicon from './Favicon';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<Favicon />, div);
});
