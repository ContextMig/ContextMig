.class Lcom/dropbox/sync/android/CoreStandardHttpRequestor$1;
.super Ljava/lang/Object;
.source "CoreStandardHttpRequestor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->cancelAllRequests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

.field final synthetic val$toCancelOffThread:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/CoreStandardHttpRequestor;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$1;->this$0:Lcom/dropbox/sync/android/CoreStandardHttpRequestor;

    iput-object p2, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$1;->val$toCancelOffThread:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 459
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 461
    :try_start_0
    iget-object v3, p0, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$1;->val$toCancelOffThread:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;

    .line 462
    .local v1, "sri":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
    invoke-virtual {v1}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;->cancel()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sri":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
    :catch_0
    move-exception v2

    .line 465
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Lcom/dropbox/sync/android/CoreStandardHttpRequestor;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/dropbox/sync/android/CoreAssert;->uncaughtExceptionOnApiThread(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 468
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "sri":Lcom/dropbox/sync/android/CoreStandardHttpRequestor$SingleRequestImpl;
    :cond_1
    move v3, v4

    .line 462
    goto :goto_1
.end method
