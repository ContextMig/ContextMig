.class Lcom/fsck/k9/mail/store/imap/ImapPushState;
.super Ljava/lang/Object;
.source "ImapPushState.java"


# static fields
.field private static final DEFAULT_UID_NEXT:J = -0x1L

.field private static final PUSH_STATE_PREFIX:Ljava/lang/String; = "uidNext="

.field private static final PUSH_STATE_PREFIX_LENGTH:I = 0x8


# instance fields
.field public final uidNext:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "uidNext"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/fsck/k9/mail/store/imap/ImapPushState;->uidNext:J

    .line 38
    return-void
.end method

.method static createDefaultImapPushState()Lcom/fsck/k9/mail/store/imap/ImapPushState;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapPushState;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapPushState;-><init>(J)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapPushState;
    .locals 7
    .param p0, "pushState"    # Ljava/lang/String;

    .prologue
    .line 16
    if-eqz p0, :cond_0

    const-string v4, "uidNext="

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 17
    :cond_0
    invoke-static {}, Lcom/fsck/k9/mail/store/imap/ImapPushState;->createDefaultImapPushState()Lcom/fsck/k9/mail/store/imap/ImapPushState;

    move-result-object v4

    .line 29
    :goto_0
    return-object v4

    .line 20
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 24
    .local v2, "newUidNext":J
    new-instance v4, Lcom/fsck/k9/mail/store/imap/ImapPushState;

    invoke-direct {v4, v2, v3}, Lcom/fsck/k9/mail/store/imap/ImapPushState;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    .end local v2    # "newUidNext":J
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Unable to part uidNext value %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/fsck/k9/mail/store/imap/ImapPushState;->createDefaultImapPushState()Lcom/fsck/k9/mail/store/imap/ImapPushState;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uidNext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fsck/k9/mail/store/imap/ImapPushState;->uidNext:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
