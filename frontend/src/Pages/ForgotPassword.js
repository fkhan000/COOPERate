import { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import { sendPasswordResetEmail, getAuth } from "firebase/auth";


const ForgotPasswordPage = () => {
    const [email, setEmail] = useState("");
    const [error, setError] = useState("");
    const [successMessage, setSuccessMessage] = useState("");
    const navigate = useNavigate();
    const auth = getAuth();

    const handleForgotPassword = async () => {
       try {
            if (!email.endsWith("@cooper.edu")) {
                setError("Email needs to be a cooper.edu email!");
                return;
            }
            await sendPasswordResetEmail(auth, email);
            setSuccessMessage("Password reset email sent. Please check your email inbox.");
        } catch (error) {
            setError("Error sending password reset email. Please try again.");
        }
    };

    useEffect(() => {
            return () => {
                setError("");
                setSuccessMessage("");
            };
        }, [email]);

    const linkStyle = {
        color: '#007bff',
        textDecoration: 'none',
    };

    const pageStyle = {
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        justifyContent: 'center',
        height: '100vh',
        background: '#1a2a33',
    };

    const inputStyle = {
            margin: '10px 0',
            padding: '10px',
            width: '300px',
            borderRadius: '5px',
            border: '1px solid #ccc',
        };

    const errorStyle = {
            color: '#ff0000',
            margin: '10px 0',
        };

    const buttonStyle = {
        padding: '0.75rem',
        borderRadius: '0.25rem',
        border: 'none',
        color: '#ffffff',
        backgroundColor: '#007bff',
        cursor: 'pointer',
        width: '20%',
    };

    return (
        <div style={pageStyle}>
            <h1>Forgot Password</h1>
            <p>Enter your email address below to receive a password reset link.</p>

            <input
                style={inputStyle}
                type="email"
                placeholder="Your email address"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
            />


            <button onClick={handleForgotPassword} style={buttonStyle}>Send Link</button>
            {error && <p style={errorStyle}>{error}</p>}
            {successMessage && <p style={{ color: "green" }}>{successMessage}</p>}
            <p><Link to="/" style={linkStyle}>Back to Login</Link></p>
        </div>
    );
};

export default ForgotPasswordPage;