.class Lcom/fsck/k9/controller/MessagingController$9;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->synchronizeMailbox(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$providedRemoteFolder:Lcom/fsck/k9/mail/Folder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$9;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$folder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$providedRemoteFolder:Lcom/fsck/k9/mail/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 710
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$9;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$providedRemoteFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailboxSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/mail/Folder;)V

    .line 711
    return-void
.end method
