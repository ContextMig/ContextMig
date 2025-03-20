.class public final Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchEngineManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;->invoke()Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;


# direct methods
.method constructor <init>(Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;)V
    .locals 0
    .param p1, "$outer"    # Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;->this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lkotlinx/coroutines/experimental/CommonPool;->INSTANCE:Lkotlinx/coroutines/experimental/CommonPool;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;

    invoke-direct {v3, p0, p1, v1}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;-><init>(Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 100
    return-void
.end method
