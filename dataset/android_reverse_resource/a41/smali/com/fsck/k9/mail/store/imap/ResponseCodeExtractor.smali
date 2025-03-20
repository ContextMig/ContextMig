.class Lcom/fsck/k9/mail/store/imap/ResponseCodeExtractor;
.super Ljava/lang/Object;
.source "ResponseCodeExtractor.java"


# static fields
.field public static final AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATIONFAILED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getResponseCode(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/String;
    .locals 5
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    :cond_0
    :goto_0
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v0

    .line 17
    .local v0, "responseTextCode":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
