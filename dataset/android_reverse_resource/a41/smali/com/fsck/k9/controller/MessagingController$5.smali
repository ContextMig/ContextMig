.class Lcom/fsck/k9/controller/MessagingController$5;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->searchLocalMessages(Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$search:Lcom/fsck/k9/search/LocalSearch;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$5;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$5;->val$search:Lcom/fsck/k9/search/LocalSearch;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$5;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$5;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$5;->val$search:Lcom/fsck/k9/search/LocalSearch;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$5;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->searchLocalMessagesSynchronous(Lcom/fsck/k9/search/LocalSearch;Lcom/fsck/k9/controller/MessagingListener;)V

    .line 495
    return-void
.end method
