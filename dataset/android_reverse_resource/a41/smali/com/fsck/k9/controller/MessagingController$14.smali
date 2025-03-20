.class Lcom/fsck/k9/controller/MessagingController$14;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$flag:Lcom/fsck/k9/mail/Flag;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$newState:Z

.field final synthetic val$uids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 1951
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$14;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$folderName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$newState:Z

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$flag:Lcom/fsck/k9/mail/Flag;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$uids:Ljava/util/List;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1954
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$folderName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$newState:Z

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$flag:Lcom/fsck/k9/mail/Flag;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$uids:Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->create(Ljava/lang/String;ZLcom/fsck/k9/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    move-result-object v0

    .line 1955
    .local v0, "command":Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$14;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v1, v2, v0}, Lcom/fsck/k9/controller/MessagingController;->access$900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;)V

    .line 1956
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$14;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$14;->val$account:Lcom/fsck/k9/Account;

    invoke-static {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->access$1000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    .line 1957
    return-void
.end method
