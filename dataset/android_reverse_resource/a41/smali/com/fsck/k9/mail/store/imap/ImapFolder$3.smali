.class Lcom/fsck/k9/mail/store/imap/ImapFolder$3;
.super Ljava/lang/Object;
.source "ImapFolder.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapSearcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/imap/ImapFolder;->getMessages(Ljava/util/List;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/imap/ImapFolder;

.field final synthetic val$includeDeleted:Z

.field final synthetic val$mesgSeqs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mail/store/imap/ImapFolder;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolder;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;->val$mesgSeqs:Ljava/util/List;

    iput-boolean p3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;->val$includeDeleted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v2, "UID SEARCH %s%s"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;->val$mesgSeqs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->access$100([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;->val$includeDeleted:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$3;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolder;

    invoke-static {v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->access$000(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 592
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    const-string v1, " NOT DELETED"

    goto :goto_0
.end method
