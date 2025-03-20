.class Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;
.super Ljava/lang/Object;
.source "ImapFolderPusher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/imap/ImapFolderPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleStopper"
.end annotation


# instance fields
.field private acceptDoneContinuation:Z

.field private imapConnection:Lcom/fsck/k9/mail/store/imap/ImapConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->acceptDoneContinuation:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$1;

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;-><init>()V

    return-void
.end method

.method private sendDone()V
    .locals 3

    .prologue
    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->imapConnection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    const v2, 0xea60

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->setReadTimeout(I)V

    .line 718
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->imapConnection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    const-string v2, "DONE"

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->sendContinuation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->imapConnection:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->close()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized startAcceptingDoneContinuation(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .prologue
    .line 695
    monitor-enter p0

    if-nez p1, :cond_0

    .line 696
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 699
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->acceptDoneContinuation:Z

    .line 700
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->imapConnection:Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopAcceptingDoneContinuation()V
    .locals 1

    .prologue
    .line 704
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->acceptDoneContinuation:Z

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->imapConnection:Lcom/fsck/k9/mail/store/imap/ImapConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopIdle()V
    .locals 1

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->acceptDoneContinuation:Z

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->acceptDoneContinuation:Z

    .line 711
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/imap/ImapFolderPusher$IdleStopper;->sendDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    :cond_0
    monitor-exit p0

    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
