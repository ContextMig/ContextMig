.class Lcom/fsck/k9/controller/MessagingController$25$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController$25;->act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/controller/MessagingController$25;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController$25;Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/controller/MessagingController$25;

    .prologue
    .line 2878
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1:Lcom/fsck/k9/controller/MessagingController$25;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1:Lcom/fsck/k9/controller/MessagingController$25;

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$25;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1:Lcom/fsck/k9/controller/MessagingController$25;

    iget-object v2, v2, Lcom/fsck/k9/controller/MessagingController$25;->val$srcFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->val$messages:Ljava/util/List;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$25$1;->this$1:Lcom/fsck/k9/controller/MessagingController$25;

    iget-object v4, v4, Lcom/fsck/k9/controller/MessagingController$25;->val$destFolder:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->access$1900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 2882
    return-void
.end method
