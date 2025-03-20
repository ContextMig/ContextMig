.class final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InlineAutocompleteEditText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $attrs:Landroid/util/AttributeSet;

.field final synthetic this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;


# direct methods
.method constructor <init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    iput-object p2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;->$attrs:Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 5

    .prologue
    .line 127
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;->this$0:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;->$attrs:Landroid/util/AttributeSet;

    sget-object v4, Lmozilla/components/ui/autocomplete/R$styleable;->InlineAutocompleteEditText:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lmozilla/components/ui/autocomplete/R$styleable;->InlineAutocompleteEditText_autocompleteBackgroundColor:I

    .line 129
    sget-object v3, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    invoke-virtual {v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->getDEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR()I

    move-result v3

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 130
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    return v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
