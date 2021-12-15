//import logo from './logo.svg';
import './App.css';
import {BrowserRouter, Route, Routes, NavLink} from 'react-router-dom';
import {User} from './User';
import {Department} from './Department';
import {Rack} from './Rack';
import {Robject} from './Object';
import {Card} from './Card';
import {Network} from './Network';

function App() {
  return (
    <BrowserRouter>
    <div className="App container">
      <h3 className="d-flex justify-content-center m-3">
        Racktables UI
      </h3>
      
      <nav className="navbar navbar-expand-sm bg-light navbar-dark">
        <ul className="navbar-nav">
          <li className="nav-item- m-1">
            <NavLink className="btn btn-light btn-outline-primary" to="/user">
              Users
            </NavLink>
          </li>
          <li className="nav-item- m-1">
            <NavLink className="btn btn-light btn-outline-primary" to="/department">
              Departments
            </NavLink>
          </li>
          <li className="nav-item- m-1">
            <NavLink className="btn btn-light btn-outline-primary" to="/rack">
              Racks
            </NavLink>
          </li>
          <li className="nav-item- m-1">
            <NavLink className="btn btn-light btn-outline-primary" to="/object">
              Objects
            </NavLink>
          </li>
          <li className="nav-item- m-1">
            <NavLink className="btn btn-light btn-outline-primary" to="/card">
              Network Cards
            </NavLink>
          </li>
          <li className="nav-item- m-1">
            <NavLink className="btn btn-light btn-outline-primary" to="/network">
              Networks
            </NavLink>
          </li>
        </ul>
      </nav>

      <Routes>
        <Route path='/user' element={<User/>} />
        <Route path='/department' element={<Department/>} />
        <Route path='/rack' element={<Rack/>} />
        <Route path='/object' element={<Robject/>} />
        <Route path='/card' element={<Card/>} />
        <Route path='/network' element={<Network/>} />
      </Routes>
    </div>
    </BrowserRouter>
  );
}

export default App;
