import logo from './logo.svg';
import './App.css';
import Login from './component/Login';
import { UserContext } from './context/user';
import { useContext } from 'react';

function App() {
  return (
    <div className="App">
      <Login/>
    </div>
  );
}

export default App;
