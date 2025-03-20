.class Lcom/fsck/k9/mail/transport/smtp/EnhancedNegativeSmtpReplyException;
.super Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
.source "EnhancedNegativeSmtpReplyException.java"


# instance fields
.field private final statusCodeClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field private final statusCodeDetail:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

.field private final statusCodeSubject:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;


# direct methods
.method constructor <init>(ILcom/fsck/k9/mail/transport/smtp/StatusCodeClass;Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;Ljava/lang/String;)V
    .locals 0
    .param p1, "replyCode"    # I
    .param p2, "statusCodeClass"    # Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    .param p3, "statusCodeSubject"    # Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;
    .param p4, "statusCodeDetail"    # Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;
    .param p5, "replyText"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p5}, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;-><init>(ILjava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedNegativeSmtpReplyException;->statusCodeClass:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 15
    iput-object p3, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedNegativeSmtpReplyException;->statusCodeSubject:Lcom/fsck/k9/mail/transport/smtp/StatusCodeSubject;

    .line 16
    iput-object p4, p0, Lcom/fsck/k9/mail/transport/smtp/EnhancedNegativeSmtpReplyException;->statusCodeDetail:Lcom/fsck/k9/mail/transport/smtp/StatusCodeDetail;

    .line 17
    return-void
.end method
