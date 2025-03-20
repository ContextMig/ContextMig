.class final Lkotlinx/coroutines/experimental/JobSupport$Finishing;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lkotlinx/coroutines/experimental/JobSupport$Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/experimental/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finishing"
.end annotation


# instance fields
.field public final cancelled:Lkotlinx/coroutines/experimental/Cancelled;

.field public final completing:Z

.field private final list:Lkotlinx/coroutines/experimental/JobSupport$NodeList;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/experimental/JobSupport$NodeList;Lkotlinx/coroutines/experimental/Cancelled;Z)V
    .locals 1
    .param p1, "list"    # Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .param p2, "cancelled"    # Lkotlinx/coroutines/experimental/Cancelled;
    .param p3, "completing"    # Z

    .prologue
    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->list:Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    iput-object p2, p0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    iput-boolean p3, p0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->completing:Z

    return-void
.end method


# virtual methods
.method public getList()Lkotlinx/coroutines/experimental/JobSupport$NodeList;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->list:Lkotlinx/coroutines/experimental/JobSupport$NodeList;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lkotlinx/coroutines/experimental/JobSupport$Finishing;->cancelled:Lkotlinx/coroutines/experimental/Cancelled;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
