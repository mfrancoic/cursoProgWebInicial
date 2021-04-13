const nodemailer = require('nodemailer');
const { EMAIL_ADMIN, PASS_ADMIN } = process.env;

const transporter = nodemailer.createTransport({
    host: 'smtp.gmail.com',
    service: 'gmail',
    port: 587,
    secure: false,
    auth: {
        user: EMAIL_ADMIN,
        pass: PASS_ADMIN
    },
    tls: {
        rejectUnauthorized: false
    }
});


const genericEmail = async(obj) => {
    try {
        const body = {
            to: obj.email,
            subject: obj.subject,
            html: obj.template
        }
        const info = await transporter.sendMail(body);

        return info;

    } catch (error) {
        throw error;
    }
};
const comments = async(obj) => {
    try {
        const subject = 'Recibimos su consulta en la web';
        const htmlTemplate = `
        <html>
            <h1>${subject}</h1>
            <h2 style="font-style: italic;">${obj.nombre}:</h2>
            <p style="font-style: italic;">
                ${obj.consulta}
            </p>
            <p>En breve estaremos respondiéndole</p>
        <html>`;

        const info = await genericEmail({ 
            email: obj.email,
            subject: subject,
            template: htmlTemplate
        });

        return info;

    } catch (error) {        
        throw error;
    }
}

module.exports = {
    genericEmail,
    comments
}