.class final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InlineAutocompleteEditText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Landroid/view/KeyEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;


# direct methods
.method constructor <init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    check-cast p3, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, v0, p3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;->invoke(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "$noName_0"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const-string v2, "<anonymous parameter 0>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "event"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    const/16 v2, 0x42

    if-ne p2, v2, :cond_3

    .line 143
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 144
    .local v0, "content":Landroid/text/Editable;
    sget-object v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    const-string v3, "content"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->access$hasCompositionString(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;Landroid/text/Editable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getCommitListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    .line 146
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "content":Landroid/text/Editable;
    :cond_3
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 151
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, "text"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$removeAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z

    goto :goto_0
.end method
