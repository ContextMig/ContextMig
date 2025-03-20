.class final Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "FocusApplication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/FocusApplication;->onCreate()V
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
.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic receiver$0:Lmozilla/components/browser/search/SearchEngineManager;

.field final synthetic this$0:Lorg/mozilla/focus/FocusApplication;


# direct methods
.method constructor <init>(Lmozilla/components/browser/search/SearchEngineManager;Lkotlin/coroutines/experimental/Continuation;Lorg/mozilla/focus/FocusApplication;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->receiver$0:Lmozilla/components/browser/search/SearchEngineManager;

    iput-object p3, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->this$0:Lorg/mozilla/focus/FocusApplication;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

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

    new-instance v0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;

    iget-object v1, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->receiver$0:Lmozilla/components/browser/search/SearchEngineManager;

    iget-object v2, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->this$0:Lorg/mozilla/focus/FocusApplication;

    invoke-direct {v0, v1, p2, v2}, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;-><init>(Lmozilla/components/browser/search/SearchEngineManager;Lkotlin/coroutines/experimental/Continuation;Lorg/mozilla/focus/FocusApplication;)V

    iput-object p1, v0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 35
    iget-object v2, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->receiver$0:Lmozilla/components/browser/search/SearchEngineManager;

    iget-object v0, p0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->this$0:Lorg/mozilla/focus/FocusApplication;

    check-cast v0, Landroid/content/Context;

    const/4 v3, 0x1

    iput v3, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v2, v0, p0}, Lmozilla/components/browser/search/SearchEngineManager;->load(Landroid/content/Context;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1

    move-object v0, v1

    .line 36
    :goto_0
    return-object v0

    .line 34
    :pswitch_1
    if-eqz p2, :cond_1

    throw p2

    .line 36
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 34
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
    .line 22
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/FocusApplication$onCreate$$inlined$apply$lambda$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
