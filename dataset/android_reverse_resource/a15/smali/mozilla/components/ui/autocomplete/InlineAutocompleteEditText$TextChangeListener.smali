.class final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;
.super Ljava/lang/Object;
.source "InlineAutocompleteEditText.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextChangeListener"
.end annotation


# instance fields
.field private textLengthBeforeChange:I

.field final synthetic this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;


# direct methods
.method public constructor <init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
    .locals 0
    .param p1, "$outer"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 514
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "editable"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getSettingAutoComplete$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    sget-object v3, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    invoke-static {v3, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->access$getNonAutocompleteText(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 524
    .local v2, "textLength":I
    const/4 v0, 0x1

    .local v0, "doAutocomplete":Z
    move-object v3, v1

    .line 527
    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, " "

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    invoke-static {v3, v4, v6, v8, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 528
    const/4 v0, 0x0

    .line 532
    :cond_2
    :goto_1
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v3, v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$setAutoCompletePrefixLength$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;I)V

    .line 538
    iget-object v4, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    if-nez v0, :cond_7

    move v3, v5

    :goto_2
    invoke-static {v4, v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$setDiscardAutoCompleteResult$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Z)V

    .line 540
    if-eqz v0, :cond_8

    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getAutocompleteResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 543
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    iget-object v4, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getAutocompleteResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V

    .line 544
    const/4 v0, 0x0

    .line 549
    :goto_3
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getSearchStateChangeListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_3

    if-lez v2, :cond_9

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    .line 554
    :cond_3
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getFilterListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function2;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_a

    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    :goto_5
    invoke-interface {v4, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    .line 556
    :cond_4
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getTextChangeListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function2;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v4}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    goto :goto_0

    .line 529
    :cond_5
    iget v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->textLengthBeforeChange:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    .line 531
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v3, v6

    .line 538
    goto :goto_2

    .line 548
    :cond_8
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v3, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$removeAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z

    goto :goto_3

    :cond_9
    move v5, v6

    .line 549
    goto :goto_4

    :cond_a
    move-object v3, v7

    .line 554
    goto :goto_5
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;->textLengthBeforeChange:I

    .line 561
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    return-void
.end method
