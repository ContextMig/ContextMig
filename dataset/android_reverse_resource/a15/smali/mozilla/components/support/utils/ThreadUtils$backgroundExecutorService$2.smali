.class final Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreadUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/support/utils/ThreadUtils;
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
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;

    invoke-direct {v0}, Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;-><init>()V

    sput-object v0, Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;->INSTANCE:Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lmozilla/components/support/utils/ThreadUtils$backgroundExecutorService$2;->invoke()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
