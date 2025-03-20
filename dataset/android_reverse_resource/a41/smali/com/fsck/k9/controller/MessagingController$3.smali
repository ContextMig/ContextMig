.class Lcom/fsck/k9/controller/MessagingController$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$refreshRemote:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$3;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$account:Lcom/fsck/k9/Account;

    iput-boolean p3, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$refreshRemote:Z

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$3;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$account:Lcom/fsck/k9/Account;

    iget-boolean v2, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$refreshRemote:Z

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$3;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->listFoldersSynchronous(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 355
    return-void
.end method
