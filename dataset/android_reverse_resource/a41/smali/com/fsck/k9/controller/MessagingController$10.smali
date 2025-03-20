.class Lcom/fsck/k9/controller/MessagingController$10;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/mailstore/MessageRemovalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;ZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folder:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageRemoved(Lcom/fsck/k9/mail/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$10;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    .line 1177
    .local v0, "l":Lcom/fsck/k9/controller/MessagingListener;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$account:Lcom/fsck/k9/Account;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$10;->val$folder:Ljava/lang/String;

    invoke-interface {v0, v2, v3, p1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_0

    .line 1179
    .end local v0    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_0
    return-void
.end method
