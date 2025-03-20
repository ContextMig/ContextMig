.class final Lorg/mozilla/focus/fragment/UrlInputFragment$onFilter$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UrlInputFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/fragment/UrlInputFragment;->onFilter(Ljava/lang/String;Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $result:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;


# direct methods
.method constructor <init>(Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onFilter$1$1;->$result:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/fragment/UrlInputFragment$onFilter$1$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "it"    # Ljava/lang/String;

    .prologue
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lorg/mozilla/focus/fragment/UrlInputFragment$onFilter$1$1;->$result:Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;

    invoke-virtual {v0}, Lmozilla/components/browser/domains/DomainAutoCompleteProvider$Result;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
