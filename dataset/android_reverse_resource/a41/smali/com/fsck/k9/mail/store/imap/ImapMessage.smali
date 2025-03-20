.class Lcom/fsck/k9/mail/store/imap/ImapMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "ImapMessage.java"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapMessage;->mUid:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 16
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/mail/Folder;->delete(Ljava/util/List;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 3
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 29
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    .line 30
    return-void
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 24
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/fsck/k9/mail/store/imap/ImapMessage;->mSize:I

    .line 20
    return-void
.end method
