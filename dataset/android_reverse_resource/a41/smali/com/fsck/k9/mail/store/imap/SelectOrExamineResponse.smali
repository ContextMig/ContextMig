.class Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;
.super Ljava/lang/Object;
.source "SelectOrExamineResponse.java"


# instance fields
.field private final readWriteMode:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "readWriteMode"    # Ljava/lang/Boolean;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->readWriteMode:Ljava/lang/Boolean;

    .line 15
    return-void
.end method

.method private static noOpenModeInResponse()Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static parse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;
    .locals 6
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "OK"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    return-object v2

    .line 22
    :cond_1
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 23
    invoke-static {}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->noOpenModeInResponse()Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    move-result-object v2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v1

    .line 27
    .local v1, "responseTextList":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 28
    invoke-static {}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->noOpenModeInResponse()Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    move-result-object v2

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "responseCode":Ljava/lang/String;
    const-string v2, "READ-ONLY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 33
    new-instance v2, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 34
    :cond_4
    const-string v2, "READ-WRITE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    new-instance v2, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 38
    :cond_5
    invoke-static {}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->noOpenModeInResponse()Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getOpenMode()I
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->hasOpenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getOpenMode() despite hasOpenMode() returning false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->readWriteMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasOpenMode()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/SelectOrExamineResponse;->readWriteMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
