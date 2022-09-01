import { useEffect, useState } from "react"
import React from "react"
const UserContext = React.createContext()

const UserProvider = ({children}) => {
    const [user, setUser] = useState(null)
    useEffect(() => {
        fetch('/me')
        .then(respone => {
            if (respone.ok) {
                respone.json()
                .then(data => setUser(data))
            }
        })
    }, [])
    const  login = (user) => {
        fetch('/login', {
            method: "POST",
            headers: {
                "content-type": "application/json"
            },
            body: JSON.stringify({
                'email': user.email
            })
        })
        .then(r => r.json())
        .then(data => setUser(data))
    }
    const logout = () => {
        fetch('/logout', {
            method: "DELETE"
        })
        .then(console.log('logged out'))
    }
    console.log('auto logged in as: ', user)
    return (
        <UserContext.Provider value = {{user, login, logout}}>
            {children}
        </UserContext.Provider>
    )
}

export {UserContext, UserProvider}