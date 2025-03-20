.class Lcom/fsck/k9/controller/MessagingController$23;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->getSearchAccountStats(Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$searchAccount:Lcom/fsck/k9/search/SearchAccount;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2742
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$23;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$23;->val$searchAccount:Lcom/fsck/k9/search/SearchAccount;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$23;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$23;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$23;->val$searchAccount:Lcom/fsck/k9/search/SearchAccount;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$23;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->getSearchAccountStatsSynchronous(Lcom/fsck/k9/search/SearchAccount;Lcom/fsck/k9/controller/MessagingListener;)Lcom/fsck/k9/AccountStats;

    .line 2746
    return-void
.end method
