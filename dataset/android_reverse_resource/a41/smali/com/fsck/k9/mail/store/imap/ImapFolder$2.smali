.class Lcom/fsck/k9/mail/store/imap/ImapFolder$2;
.super Ljava/lang/Object;
.source "ImapFolder.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapSearcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/imap/ImapFolder;->getMessages(IILjava/util/Date;ZLcom/fsck/k9/mail/MessageRetrievalListener;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/imap/ImapFolder;

.field final synthetic val$dateSearchString:Ljava/lang/String;

.field final synthetic val$end:I

.field final synthetic val$includeDeleted:Z

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapFolder;IILjava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mail/store/imap/ImapFolder;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolder;

    iput p2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$start:I

    iput p3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$end:I

    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$dateSearchString:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$includeDeleted:Z

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
    .line 526
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "UID SEARCH %d:%d%s%s"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$dateSearchString:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v5, 0x3

    iget-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->val$includeDeleted:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolder$2;->this$0:Lcom/fsck/k9/mail/store/imap/ImapFolder;

    invoke-static {v1, v0}, Lcom/fsck/k9/mail/store/imap/ImapFolder;->access$000(Lcom/fsck/k9/mail/store/imap/ImapFolder;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 526
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    const-string v1, " NOT DELETED"

    goto :goto_0
.end method
