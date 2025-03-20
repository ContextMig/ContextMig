.class public final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InlineAutocompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $ic:Landroid/view/inputmethod/InputConnection;

.field final synthetic this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;


# direct methods
.method constructor <init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p1, "$outer"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .param p2, "$captured_local_variable$1"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "$super_call_param$2"    # Landroid/view/inputmethod/InputConnection;
    .param p4, "$super_call_param$3"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputConnection;",
            "Landroid/view/inputmethod/InputConnection;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 464
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    iput-object p2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->$ic:Landroid/view/inputmethod/InputConnection;

    invoke-direct {p0, p3, p4}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method

.method private final removeAutocompleteOnComposing(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 480
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .local v2, "editable":Landroid/text/Editable;
    move-object v3, v2

    .line 481
    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "composingStart":I
    move-object v3, v2

    .line 482
    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 485
    .local v0, "composingEnd":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 487
    sub-int v3, v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .line 488
    const-string v4, "editable"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$removeAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->finishComposingText()Z

    .line 492
    invoke-virtual {p0, v1, v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->setComposingRegion(II)Z

    .line 493
    const/4 v3, 0x1

    .line 495
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->removeAutocompleteOnComposing(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 499
    :goto_0
    return v0

    .line 502
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$removeAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getCtx()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 474
    const/4 v1, 0x0

    .line 476
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;->removeAutocompleteOnComposing(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    .line 509
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto :goto_0
.end method
