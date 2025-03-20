.class final Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AutocompleteQuickAddPopup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;)V
    .locals 1

    iput-object p1, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;

    iget-object v0, v0, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup$1;->this$0:Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;

    invoke-virtual {v0}, Lorg/mozilla/focus/autocomplete/AutocompleteQuickAddPopup;->getOnUrlAdded()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method
