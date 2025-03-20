.class Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;
.super Ljava/lang/Object;
.source "Throttle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Throttle$MyTimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/Throttle$MyTimerTask;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/Throttle$MyTimerTask;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/fsck/k9/Throttle$MyTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/Throttle$MyTimerTask;Lcom/fsck/k9/Throttle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/Throttle$MyTimerTask;
    .param p2, "x1"    # Lcom/fsck/k9/Throttle$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/fsck/k9/Throttle$MyTimerTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/fsck/k9/Throttle$MyTimerTask;

    iget-object v0, v0, Lcom/fsck/k9/Throttle$MyTimerTask;->this$0:Lcom/fsck/k9/Throttle;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/Throttle;->access$302(Lcom/fsck/k9/Throttle;Lcom/fsck/k9/Throttle$MyTimerTask;)Lcom/fsck/k9/Throttle$MyTimerTask;

    .line 143
    iget-object v0, p0, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/fsck/k9/Throttle$MyTimerTask;

    invoke-static {v0}, Lcom/fsck/k9/Throttle$MyTimerTask;->access$400(Lcom/fsck/k9/Throttle$MyTimerTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "Throttle: [%s] Kicking callback"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/fsck/k9/Throttle$MyTimerTask;

    iget-object v3, v3, Lcom/fsck/k9/Throttle$MyTimerTask;->this$0:Lcom/fsck/k9/Throttle;

    invoke-static {v3}, Lcom/fsck/k9/Throttle;->access$500(Lcom/fsck/k9/Throttle;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;->this$1:Lcom/fsck/k9/Throttle$MyTimerTask;

    iget-object v0, v0, Lcom/fsck/k9/Throttle$MyTimerTask;->this$0:Lcom/fsck/k9/Throttle;

    invoke-static {v0}, Lcom/fsck/k9/Throttle;->access$600(Lcom/fsck/k9/Throttle;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    :cond_0
    return-void
.end method
