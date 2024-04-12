import {useState} from "react";
import {Link, useNavigate} from "react-router-dom";
import {getAuth, signInWithEmailAndPassword} from 'firebase/auth';
import './Login.css';

const LoginPage = () => {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [error, setError] = useState("");

    const navigate = useNavigate();

    const logIn = async () => {
        try {
            if (!email.endsWith("@cooper.edu")) {
                setError("Email needs to be a cooper.edu email!");
                return;
            }
            await signInWithEmailAndPassword(getAuth(), email, password);
            
            const userDetails = await fetch("http://localhost:8080/Users/email/" + email);

            const user = await userDetails.json();

            localStorage.setItem("username", user.userName);
            localStorage.setItem("user_id", user.id);
            localStorage.setItem("karma", user.karma);

            
            console.log(user.username);
            console.log(user.id);
            
            window.location.reload();
        } catch (e) {
            setError("Invalid Email Address and/or Password!");
        }
    };




    return (
    <div className="Login">
      <nav className="container-fluid">
        <ul><li><strong>COOPERATE</strong></li></ul>
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="/create-account" className="make-account-btn" role="button">Make an Account</a></li>
        </ul>
      </nav>
      <div className = "container">
        <main className="login-form">

          <h2>Login</h2>
          <input  type = "text" placeholder="email@cooper.edu" value = {email} onChange={e=>setEmail(e.target.value)} />
          <input type="password" placeholder="Password" value={password} onChange={e=>setPassword(e.target.value)} />
          <button onClick={logIn}>Log In</button>
          <Link to="/forgot-password" className="forgot-password-link">Forgot Password?</Link>
        </main>
        {error && <p className="error-message">{error}</p>}
      </div>
    </div>
  );
}

export default LoginPage;