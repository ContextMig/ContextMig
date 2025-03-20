.class Lcom/fsck/k9/controller/MessagingController$31$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$31;->act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$31;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$accountMessages:Ljava/util/List;

.field final synthetic val$messageFolder:Lcom/fsck/k9/mailstore/LocalFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$31;Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$31;

    .prologue
    .line 3137
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->this$1:Lcom/fsck/k9/controller/MessagingController$31;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->val$messageFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->val$accountMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->this$1:Lcom/fsck/k9/controller/MessagingController$31;

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$31;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->val$messageFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->val$accountMessages:Ljava/util/List;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$31$1;->this$1:Lcom/fsck/k9/controller/MessagingController$31;

    iget-object v4, v4, Lcom/fsck/k9/controller/MessagingController$31;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->access$2400(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3141
    return-void
.end method
