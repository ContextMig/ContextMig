.class Lcom/fsck/k9/controller/MessagingController$34;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->clearFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/ActivityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fsck/k9/activity/ActivityListener;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/activity/ActivityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 3326
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$34;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$34;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$34;->val$folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$34;->val$listener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$34;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$34;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$34;->val$folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$34;->val$listener:Lcom/fsck/k9/activity/ActivityListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->clearFolderSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 3330
    return-void
.end method
