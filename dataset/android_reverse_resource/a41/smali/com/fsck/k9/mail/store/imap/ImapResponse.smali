.class Lcom/fsck/k9/mail/store/imap/ImapResponse;
.super Lcom/fsck/k9/mail/store/imap/ImapList;
.source "ImapResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x5f919d91118570f5L


# instance fields
.field private callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

.field private final commandContinuationRequested:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .param p2, "commandContinuationRequested"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .line 22
    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->commandContinuationRequested:Z

    .line 23
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static newContinuationRequest(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 3
    .param p0, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .prologue
    .line 27
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;-><init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static newTaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 2
    .param p0, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;-><init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static newUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 3
    .param p0, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .prologue
    .line 31
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;-><init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCallback()Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isContinuationRequested()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->commandContinuationRequested:Z

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->commandContinuationRequested:Z

    if-eqz v0, :cond_0

    const-string v0, "+"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    goto :goto_0
.end method
