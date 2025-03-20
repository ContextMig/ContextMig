.class Lcom/fsck/k9/mail/store/imap/AlertResponse;
.super Ljava/lang/Object;
.source "AlertResponse.java"


# static fields
.field private static final ALERT_RESPONSE_CODE:Ljava/lang/String; = "ALERT"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getAlertText(Lcom/fsck/k9/mail/store/imap/ImapResponse;)Ljava/lang/String;
    .locals 5
    .param p0, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isList(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-object v1

    .line 19
    :cond_1
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;

    move-result-object v0

    .line 20
    .local v0, "responseTextCode":Lcom/fsck/k9/mail/store/imap/ImapList;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ALERT"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
