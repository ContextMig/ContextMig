.class public Lcom/fsck/k9/mailstore/LocalBodyPart;
.super Lcom/fsck/k9/mail/internet/MimeBodyPart;
.source "LocalBodyPart.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/LocalPart;


# instance fields
.field private final accountUuid:Ljava/lang/String;

.field private final message:Lcom/fsck/k9/mailstore/LocalMessage;

.field private final messagePartId:J

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;JJ)V
    .locals 1
    .param p1, "accountUuid"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mailstore/LocalMessage;
    .param p3, "messagePartId"    # J
    .param p5, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->accountUuid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 19
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->messagePartId:J

    .line 20
    iput-wide p5, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->size:J

    .line 21
    return-void
.end method


# virtual methods
.method public getAccountUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->accountUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    return-object v0
.end method

.method public getPartId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->messagePartId:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalBodyPart;->size:J

    return-wide v0
.end method
