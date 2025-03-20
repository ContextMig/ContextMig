.class Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/pop3/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pop3Message"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "folder"    # Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Folder;

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 1184
    iput-object p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->mUid:Ljava/lang/String;

    .line 1185
    iput-object p2, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    .line 1186
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->mSize:I

    .line 1187
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
    .line 1204
    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1210
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
    .line 1195
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1196
    iget-object v0, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags(Ljava/util/List;Ljava/util/Set;Z)V

    .line 1197
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1190
    iput p1, p0, Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3Message;->mSize:I

    .line 1191
    return-void
.end method
