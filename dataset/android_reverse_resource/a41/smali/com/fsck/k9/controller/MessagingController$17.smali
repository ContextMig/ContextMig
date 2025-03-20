.class Lcom/fsck/k9/controller/MessagingController$17;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->setFlagForThreads(Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$flag:Lcom/fsck/k9/mail/Flag;

.field final synthetic val$newState:Z

.field final synthetic val$threadRootIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$17;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$threadRootIds:Ljava/util/List;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$flag:Lcom/fsck/k9/mail/Flag;

    iput-boolean p5, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$newState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$17;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$threadRootIds:Ljava/util/List;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$flag:Lcom/fsck/k9/mail/Flag;

    iget-boolean v4, p0, Lcom/fsck/k9/controller/MessagingController$17;->val$newState:Z

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->access$1100(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/util/List;Lcom/fsck/k9/mail/Flag;ZZ)V

    .line 2101
    return-void
.end method
