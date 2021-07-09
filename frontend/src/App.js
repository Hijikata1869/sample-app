import React from 'react';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";

// components
import { Top } from './containers/Top';
import { MyPage } from './containers/MyPage';
import { TrainingLog } from './containers/TrainingLog';

function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/top">
          <Top />
        </Route>
        <Route exact path="/mypage">
          <MyPage />
        </Route>
        <Route exact path="/training_log">
          <TrainingLog />
        </Route>
      </Switch>
    </Router>
  );
}

export default App;
