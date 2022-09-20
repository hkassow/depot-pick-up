import logo from './logo.svg';
import './App.css';
import Login from './component/Login';
import {useEffect, useState} from 'react';
import Main from './component/Main';

function App() {

  const [items, setItems] = useState([])
  
  useEffect(()=> {
    fetch('/items').then( r => {
      if(r.ok) {r.json().then(data => {
        setItems(data)
        console.log(data)}
        )}
      else console.log("whoops")})
  }, [])

  return (
    <div className="App">
      <Login/>
      <Main items={items}/>
    </div>
  );
}

export default App;
