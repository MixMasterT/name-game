/**
 * @file Root component.
 */

import React from 'react';
// import PropTypes from 'prop-types';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import HellowWorld from '../containers/HelloWorldContainer';

const Home = () => (
  <div>
    <p>Home</p>
  </div>
);

const Donkey = () => (
  <div>
    <p>Donkey</p>
  </div>
);

const UserProfile = () => (
  <div>
    <p>User Profile</p>
  </div>
);

const Root = () => {
  return (
    <div>
      <BrowserRouter>
        <Switch>
          <Route path="/donkey" component={Donkey} />
          <Route path="/profile" component={UserProfile} />
          <Route path="/hello" component={HellowWorld} />
          <Route component={Home} />
        </Switch>
      </BrowserRouter>
    </div>
  );
};

export default Root;
