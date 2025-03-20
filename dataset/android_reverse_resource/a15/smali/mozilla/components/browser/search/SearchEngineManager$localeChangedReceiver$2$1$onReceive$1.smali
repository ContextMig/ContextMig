.class final Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "SearchEngineManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lkotlinx/coroutines/experimental/CoroutineScope;",
        "Lkotlin/coroutines/experimental/Continuation",
        "<-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;


# direct methods
.method constructor <init>(Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    iput-object p2, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->$context:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 3
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineScope;
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;

    iget-object v1, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    iget-object v2, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;-><init>(Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 97
    iget v1, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v1, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v1, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 98
    iget-object v1, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;

    iget-object v1, v1, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1;->this$0:Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;

    iget-object v1, v1, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2;->this$0:Lmozilla/components/browser/search/SearchEngineManager;

    iget-object v2, p0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput v3, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v1, v2, p0}, Lmozilla/components/browser/search/SearchEngineManager;->load(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 99
    :goto_0
    return-object v0

    .line 97
    :pswitch_1
    if-eqz p2, :cond_1

    throw p2

    .line 99
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$receiver"    # Lkotlinx/coroutines/experimental/CoroutineScope;
    .param p2, "continuation"    # Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/experimental/CoroutineScope;",
            "Lkotlin/coroutines/experimental/Continuation",
            "<-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmozilla/components/browser/search/SearchEngineManager$localeChangedReceiver$2$1$onReceive$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
