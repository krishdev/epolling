var nodemailer = require("nodemailer");
const { config } = require("./config");
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
				type: config.type,
				user: config.user,
				clientId: config.clientId,
				clientSecret: config.clientSecret,
				refreshToken: config.refreshToken,
				accessToken: config.accessToken
			//})
		}
	});
	var mailOptions = { //email options
		from: config.email.error.from, // sender address.  Must be the same as authenticated user if using Gmail.
		to: config.email.error.to, // receiver
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