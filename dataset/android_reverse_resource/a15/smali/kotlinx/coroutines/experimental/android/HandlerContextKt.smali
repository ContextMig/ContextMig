.class public final Lkotlinx/coroutines/experimental/android/HandlerContextKt;
.super Ljava/lang/Object;
.source "HandlerContext.kt"


# static fields
.field private static final UI:Lkotlinx/coroutines/experimental/android/HandlerContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lkotlinx/coroutines/experimental/android/HandlerContext;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v2, "UI"

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/experimental/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->UI:Lkotlinx/coroutines/experimental/android/HandlerContext;

    return-void
.end method

.method public static final getUI()Lkotlinx/coroutines/experimental/android/HandlerContext;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->UI:Lkotlinx/coroutines/experimental/android/HandlerContext;

    return-object v0
.end method
