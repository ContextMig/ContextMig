.class final Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "AutocompleteAddFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutocompleteAddFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutocompleteAddFragment.kt\norg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1\n*L\n1#1,101:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $domain:Ljava/lang/String;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;Ljava/lang/String;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;

    iput-object p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->$domain:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

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

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;

    iget-object v2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->$domain:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;Ljava/lang/String;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 66
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 67
    sget-object v2, Lmozilla/components/browser/domains/CustomDomains;->INSTANCE:Lmozilla/components/browser/domains/CustomDomains;

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "activity"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0}, Lmozilla/components/browser/domains/CustomDomains;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 68
    .local v6, "domains":Ljava/util/List;
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->$domain:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;

    const v2, 0x7f0f00c2

    invoke-virtual {v0, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "error":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/experimental/android/HandlerContextKt;->getUI()Lkotlinx/coroutines/experimental/android/HandlerContext;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext;

    new-instance v3, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1$1;

    invoke-direct {v3, p0, v7, v1}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;Ljava/lang/String;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x6

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    .line 81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 68
    .end local v7    # "error":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->$domain:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;

    const v2, 0x7f0f00c8

    invoke-virtual {v0, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v1

    .line 71
    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteAddFragment$onOptionsItemSelected$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
