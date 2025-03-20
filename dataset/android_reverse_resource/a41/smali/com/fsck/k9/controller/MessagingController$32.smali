.class Lcom/fsck/k9/controller/MessagingController$32;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/controller/MessagingController$MessageActor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->debugClearMessagesLocally(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3154
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$32;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "messageFolder"    # Lcom/fsck/k9/mailstore/LocalFolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mailstore/LocalFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mailstore/LocalMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3160
    .local p3, "accountMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$32;->this$0:Lcom/fsck/k9/controller/MessagingController;

    const-string v1, "debugClearLocalMessages"

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/controller/MessagingController$32$1;

    invoke-direct {v3, p0, p3}, Lcom/fsck/k9/controller/MessagingController$32$1;-><init>(Lcom/fsck/k9/controller/MessagingController$32;Ljava/util/List;)V

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->access$2000(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3172
    return-void
.end method
