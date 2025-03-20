.class Lcom/fsck/k9/Throttle$MyTimerTask;
.super Ljava/util/TimerTask;
.source "Throttle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/Throttle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/fsck/k9/Throttle;


# direct methods
.method private constructor <init>(Lcom/fsck/k9/Throttle;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fsck/k9/Throttle$MyTimerTask;->this$0:Lcom/fsck/k9/Throttle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/Throttle;Lcom/fsck/k9/Throttle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/Throttle;
    .param p2, "x1"    # Lcom/fsck/k9/Throttle$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/fsck/k9/Throttle$MyTimerTask;-><init>(Lcom/fsck/k9/Throttle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/Throttle$MyTimerTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/Throttle$MyTimerTask;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/fsck/k9/Throttle$MyTimerTask;->mCanceled:Z

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/Throttle$MyTimerTask;->mCanceled:Z

    .line 136
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fsck/k9/Throttle$MyTimerTask;->this$0:Lcom/fsck/k9/Throttle;

    invoke-static {v0}, Lcom/fsck/k9/Throttle;->access$200(Lcom/fsck/k9/Throttle;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/Throttle$MyTimerTask$HandlerRunnable;-><init>(Lcom/fsck/k9/Throttle$MyTimerTask;Lcom/fsck/k9/Throttle$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method
