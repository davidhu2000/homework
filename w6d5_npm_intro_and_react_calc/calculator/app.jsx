import React from 'react';
import ReactDOM from 'react-dom';

import Calculator from './calculator.jsx';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<Calculator />, document.getElementById('main'));
});
