.class final Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;
.super Ljava/lang/Object;
.source "AutocompleteQuickAddPopup.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;

    iput-object p2, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "it"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 31
    new-instance v3, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$job$1;

    invoke-direct {v3, p0, v0}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$job$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;Lkotlin/coroutines/experimental/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x7

    move-object v1, v0

    move-object v2, v0

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/experimental/BuildersKt;->launch$default(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlinx/coroutines/experimental/CoroutineStart;Lkotlinx/coroutines/experimental/Job;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/experimental/Job;

    move-result-object v6

    .line 36
    .local v6, "job":Lkotlinx/coroutines/experimental/Job;
    new-instance v0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$1;

    invoke-direct {v0, p0}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$1;-><init>(Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v0}, Lkotlinx/coroutines/experimental/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/experimental/DisposableHandle;

    .line 37
    return-void
.end method
