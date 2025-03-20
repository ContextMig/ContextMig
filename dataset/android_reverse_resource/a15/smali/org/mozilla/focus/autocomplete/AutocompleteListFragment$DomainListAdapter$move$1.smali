.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->move(II)V
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
.field final synthetic $from:I

.field final synthetic $to:I

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;IILkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    iput p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->$from:I

    iput p3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->$to:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 1

    .prologue
    .line 169
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 4
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

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    iget v2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->$from:I

    iget v3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->$to:I

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;IILkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 230
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v0, :pswitch_data_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 231
    sget-object v0, Lmozilla/components/browser/domains/CustomDomains;->INSTANCE:Lmozilla/components/browser/domains/CustomDomains;

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    iget-object v1, v1, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;

    invoke-virtual {v1}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-static {v2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->access$getDomains$p(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmozilla/components/browser/domains/CustomDomains;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 233
    sget-object v0, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->INSTANCE:Lorg/mozilla/focus/telemetry/TelemetryWrapper;

    iget v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->$from:I

    iget v2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->$to:I

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->reorderAutocompleteDomainEvent(II)V

    .line 234
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$move$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
