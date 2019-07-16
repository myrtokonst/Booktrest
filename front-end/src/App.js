import React from 'react';
import { Route, Switch, withRouter } from 'react-router-dom'

import NavBar from './components/NavBar'
import LandingPage from './containers/LandingPage'

import './App.css';

function App() {
  return (
    <div className="App">
    <NavBar />
     <Switch> 
      <Route exact path='/' render={ props =>  
        <LandingPage {...props} />}/>

     </Switch>
    </div>
  );
}

export default withRouter(App)
