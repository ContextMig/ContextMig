.class final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InlineAutocompleteEditText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;


# direct methods
.method constructor <init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;->invoke(II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(II)V
    .locals 4
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 177
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 178
    .local v1, "text":Landroid/text/Editable;
    sget-object v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->getAUTOCOMPLETE_SPAN()Landroid/text/NoCopySpan$Concrete;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 180
    .local v0, "start":I
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-static {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getSettingAutoComplete$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ltz v0, :cond_0

    if-ne v0, p1, :cond_1

    if-ne v0, p2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    if-gt p1, v0, :cond_2

    if-gt p2, v0, :cond_2

    .line 188
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const-string v3, "text"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$removeAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    const-string v3, "text"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$commitAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z

    goto :goto_0
.end method
