exports.config = {
    mysql: {
        host: 'localhost',
        port: '3306',
        user: 'krishna',
        password: 'Aprilfool_20',
        database: 'eyf',
        multipleStatements: true,
        socketPath: '/var/run/mysqld/mysqld.sock',
    },
    email: {
        type: 'OAuth2',
        user: "krishnakumar4315@gmail.com",
        clientId: "603367316954-67pej7ed33fg529n6e5cmve5pugclro2.apps.googleusercontent.com",
        clientSecret:"QOOem3Zel6T456JXACjWZ1Cv",
        refreshToken: "1/6KhePRPmLJlMpls--t2cP_LJ-gma0-qLLY6bvC4odr2d30Ryt1QoUATvEzgtA2CT",
        accessToken: "ya29.GlsMBtW6Ka79RsyMoV9pPvQ21nRl_ClYEII2b1eVtbCwOeps_oII2gZK8ISEEGiqLq5bCIPKmWUV3hW5JemtiyUwnfz9niwzKKDxKcWECvqzeWvkHFk4lzWXcx0B",
        error: {
            from: 'krishnakumar4315@gmail.com',
            to: 'info@electyourfuture.com'
        }
    } 
}