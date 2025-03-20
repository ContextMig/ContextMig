.class final Lkotlinx/coroutines/experimental/EventLoopBase$scheduleImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EventLoop.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/experimental/EventLoopBase;->scheduleImpl(Lkotlinx/coroutines/experimental/EventLoopBase$DelayedTask;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/experimental/EventLoopBase;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/experimental/EventLoopBase;)V
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/experimental/EventLoopBase$scheduleImpl$1;->this$0:Lkotlinx/coroutines/experimental/EventLoopBase;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/experimental/EventLoopBase$scheduleImpl$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lkotlinx/coroutines/experimental/EventLoopBase$scheduleImpl$1;->this$0:Lkotlinx/coroutines/experimental/EventLoopBase;

    invoke-virtual {v0}, Lkotlinx/coroutines/experimental/EventLoopBase;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
