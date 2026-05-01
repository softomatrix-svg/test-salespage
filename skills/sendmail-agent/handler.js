const nodemailer = require("nodemailer");
const config = require("./config.json");

module.exports = async function (inputs) {
  const { subject, message } = inputs;

  if (!subject || !message) {
    return { success: false, error: "Missing subject or message" };
  }

  try {
    const transporter = nodemailer.createTransport({
      host: config.smtp_host,
      port: config.smtp_port,
      secure: false,
      auth: {
        user: config.email_user,
        pass: config.email_pass
      }
    });

    const mailOptions = {
      from: config.email_user,
      to: config.to_email,
      subject: subject,
      text: message
    };

    await transporter.sendMail(mailOptions);

    return {
      success: true,
      message: "Email sent successfully"
    };

  } catch (error) {
    return {
      success: false,
      error: error.message
    };
  }
};