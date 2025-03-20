.class Lcom/adjust/sdk/CustomScheduledExecutor$1;
.super Ljava/lang/Object;
.source "CustomScheduledExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/CustomScheduledExecutor;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->this$0:Lcom/adjust/sdk/CustomScheduledExecutor;

    iput-object p2, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x1

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;

    iget-object v3, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->this$0:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-direct {v2, v3, p1}, Lcom/adjust/sdk/CustomScheduledExecutor$RunnableWrapper;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 31
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->val$source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 35
    new-instance v1, Lcom/adjust/sdk/CustomScheduledExecutor$1$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/CustomScheduledExecutor$1$1;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    return-object v0
.end method
