.class Lcom/fsck/k9/controller/MessagingController$15;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->queueExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$15;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$15;->val$folderName:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$15;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2001
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$15;->val$folderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->create(Ljava/lang/String;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    move-result-object v0

    .line 2002
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$15;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$15;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v1, v2, v0}, Lcom/fsck/k9/controller/MessagingController;->access$900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 2003
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$15;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$15;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->access$1000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    .line 2004
    return-void
.end method
