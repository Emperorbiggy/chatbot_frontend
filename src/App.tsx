import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import { HashRouter as Router, Route, Routes } from "react-router-dom";
import Dashboard from "./pages/Dashboard"; // Import the Dashboard component
import CMS from "./pages/CMS"; // Import the CMS component
import './App.css';

function App() {
  const isMobile = window.innerWidth <= 768; // Simple mobile detection logic
  const isDarkMode = localStorage.getItem("darkMode") === "false"; 

  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path="/" element={<Dashboard isMobile={isMobile} isDarkMode={isDarkMode} />} />
          <Route path="/cms" element={<CMS />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
