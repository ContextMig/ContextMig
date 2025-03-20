.class Lcom/fsck/k9/mail/store/imap/ImapConnection$1;
.super Ljava/lang/Object;
.source "ImapConnection.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/UntaggedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/imap/ImapConnection;->attemptXOAuth2()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/imap/ImapConnection;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mail/store/imap/ImapConnection;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection$1;->this$0:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAsyncUntaggedResponse(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapConnection$1;->this$0:Lcom/fsck/k9/mail/store/imap/ImapConnection;

    invoke-static {v0, p1}, Lcom/fsck/k9/mail/store/imap/ImapConnection;->access$000(Lcom/fsck/k9/mail/store/imap/ImapConnection;Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 427
    return-void
.end method
