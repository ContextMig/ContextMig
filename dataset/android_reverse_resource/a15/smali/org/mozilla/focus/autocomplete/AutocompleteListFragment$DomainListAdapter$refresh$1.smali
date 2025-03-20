.class final Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "AutocompleteListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->refresh(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
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
.field final synthetic $body:Lkotlin/jvm/functions/Function0;

.field final synthetic $context:Landroid/content/Context;

.field private p$:Lkotlinx/coroutines/experimental/CoroutineScope;

.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/experimental/Continuation;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    iput-object p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->$body:Lkotlin/jvm/functions/Function0;

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

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

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

    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;

    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    iget-object v2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->$body:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 174
    iget v1, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    packed-switch v1, :pswitch_data_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_0
    if-eqz p2, :cond_0

    throw p2

    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->p$:Lkotlinx/coroutines/experimental/CoroutineScope;

    .line 175
    new-instance v3, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1$updatedDomains$1;

    invoke-direct {v3, p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1$updatedDomains$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x7

    move-object v1, v0

    move-object v2, v0

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/DeferredKt;->async$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Deferred;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/experimental/Deferred;->await(Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_2

    move-object v0, v7

    .line 183
    :goto_0
    return-object v0

    .line 174
    :pswitch_1
    if-eqz p2, :cond_1

    throw p2

    :cond_1
    move-object v6, p1

    .line 177
    :cond_2
    check-cast v6, Ljava/util/List;

    .local v6, "updatedDomains":Ljava/util/List;
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-static {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->access$getDomains$p(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-static {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->access$getDomains$p(Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;)Ljava/util/List;

    move-result-object v0

    check-cast v6, Ljava/util/Collection;

    .end local v6    # "updatedDomains":Ljava/util/List;
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter;->notifyDataSetChanged()V

    .line 182
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->$body:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 183
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 174
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
    .line 169
    check-cast p1, Lkotlinx/coroutines/experimental/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->invoke(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->create(Lkotlinx/coroutines/experimental/CoroutineScope;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/focus/autocomplete/AutocompleteListFragment$DomainListAdapter$refresh$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
