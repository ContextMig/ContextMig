.class final Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source "UrlInputFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/UrlInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Ljava/lang/String;",
        "Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/mozilla/focus/fragment/UrlInputFragment;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onFilter"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lorg/mozilla/focus/fragment/UrlInputFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onFilter(Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V"

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$2;->invoke(Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
    .locals 1
    .param p1, "p1"    # Ljava/lang/String;
    .param p2, "p2"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onViewCreated$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/focus/fragment/UrlInputFragment;

    .line 173
    invoke-static {v0, p1, p2}, Lorg/mozilla/focus/fragment/UrlInputFragment;->access$onFilter(Lorg/mozilla/focus/fragment/UrlInputFragment;Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    return-void
.end method
