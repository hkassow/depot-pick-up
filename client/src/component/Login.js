import { GoogleLogin } from '@react-oauth/google';
import jwt_decode from "jwt-decode"
import { useContext } from 'react';
import { UserContext } from '../context/user';
const Login = () => {
    const { login, logout } = useContext(UserContext)
    const onSuccess = (res) => {
        console.log('Successful login as:', res)
        let userObj = jwt_decode(res.credential)
        login(userObj)
    }
    return (
        <>
        <GoogleLogin
        auto_select
        onSuccess={onSuccess}
        onError={() => {
            console.log('Login Failed');
        }}
        cookiePolicy={'single_host_origin'}
        isSignedIn={true}
        />

        <button onClick={() => logout()}>logout</button>
        </>
    )
    
}

export default Login