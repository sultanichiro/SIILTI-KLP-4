<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ResetPasswordMail extends Mailable
{
    use Queueable, SerializesModels;

    protected $token;

    public function __construct($token)
    {
        $this->token = $token;
    }

    /**
     * Get the message envelope.
     */
    public function envelope()
    {
        return $this->subject('Reset Password Mail');
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('auth.mail-reset-password')
                    ->with('token', $this->token);
    }
}
