.class public Lcom/fsck/k9/mailstore/LocalMimeMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "LocalMimeMessage.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LocalPart;


# instance fields
.field private final accountUuid:Ljava/lang/String;

.field private final message:Lcom/fsck/k9/mailstore/LocalMessage;

.field private final messagePartId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;J)V
    .locals 1
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "messagePartId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->accountUuid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 18
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->messagePartId:J

    .line 19
    return-void
.end method


# virtual methods
.method public getAccountUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->accountUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    return-object v0
.end method

.method public getPartId()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->messagePartId:J

    return-wide v0
.end method
