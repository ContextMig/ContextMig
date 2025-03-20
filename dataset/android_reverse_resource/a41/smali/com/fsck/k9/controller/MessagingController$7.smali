.class Lcom/fsck/k9/controller/MessagingController$7;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->searchRemoteMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$acctUuid:Ljava/lang/String;

.field final synthetic val$folderName:Ljava/lang/String;

.field final synthetic val$forbiddenFlags:Ljava/util/Set;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$requiredFlags:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$7;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$acctUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$folderName:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$query:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$requiredFlags:Ljava/util/Set;

    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$forbiddenFlags:Ljava/util/Set;

    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 560
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$7;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$acctUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$folderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$query:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$requiredFlags:Ljava/util/Set;

    iget-object v5, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$forbiddenFlags:Ljava/util/Set;

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController$7;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController;->searchRemoteMessagesSynchronous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 561
    return-void
.end method
