var nodemailer = require("nodemailer");
//Send email through npm sendmail
exports.sendErrorEmail = function (errorMessage) {
    console.log('entered');
	var smtpTransport = nodemailer.createTransport({
		//service: "Gmail", // sets automatically host, port and connection security settings
		host: 'smtp.gmail.com',
	    port: 465,
	    secure: true,
		auth: {
			//xoauth2: xoauth2.createXOAuth2Generator({
				type: 'OAuth2',
				user: "krishnakumar4315@gmail.com",
				clientId: "603367316954-67pej7ed33fg529n6e5cmve5pugclro2.apps.googleusercontent.com",
				clientSecret:"QOOem3Zel6T456JXACjWZ1Cv",
				refreshToken: "1/6KhePRPmLJlMpls--t2cP_LJ-gma0-qLLY6bvC4odr2d30Ryt1QoUATvEzgtA2CT",
				accessToken: "ya29.GlsMBtW6Ka79RsyMoV9pPvQ21nRl_ClYEII2b1eVtbCwOeps_oII2gZK8ISEEGiqLq5bCIPKmWUV3hW5JemtiyUwnfz9niwzKKDxKcWECvqzeWvkHFk4lzWXcx0B"
			//})
		}
	});
	var mailOptions = { //email options
		from: 'krishnakumar4315@gmail.com', // sender address.  Must be the same as authenticated user if using Gmail.
		to: 'info@electyourfuture.com', // receiver
		subject: 'Server Error Occurred', // subject
		text: '', // body,
		html: errorMessage
	};
	smtpTransport.sendMail(mailOptions, function (error, response) { //callback
        if(error) console.log('email not sent' + error);
        else console.log('email sent');
		smtpTransport.close(); // shut down the connection pool, no more messages.  Comment this line out to continue sending emails.
	});
}