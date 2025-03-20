.class Lcom/fsck/k9/controller/MessagingController$31;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/fsck/k9/controller/MessagingController$MessageActor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->deleteMessages(Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3130
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$31;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$31;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

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
    .line 3135
    .local p3, "accountMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mailstore/LocalMessage;>;"
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$31;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-static {v0, p1, p3}, Lcom/fsck/k9/controller/MessagingController;->access$1800(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;)V

    .line 3137
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$31;->this$0:Lcom/fsck/k9/controller/MessagingController;

    const-string v1, "deleteMessages"

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/controller/MessagingController$31$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController$31$1;-><init>(Lcom/fsck/k9/controller/MessagingController$31;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->access$2000(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Ljava/lang/Runnable;)V

    .line 3143
    return-void
.end method
