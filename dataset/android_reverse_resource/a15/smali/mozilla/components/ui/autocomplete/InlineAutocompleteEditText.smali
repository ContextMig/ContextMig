.class public Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "InlineAutocompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;,
        Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;,
        Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;
    }
.end annotation


# static fields
.field private static final AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

.field public static final Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

.field private static final DEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR:I


# instance fields
.field private final autoCompleteBackgroundColor:I

.field private autoCompletePrefixLength:I

.field private autoCompleteSpans:[Ljava/lang/Object;

.field private autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

.field private commitListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private discardAutoCompleteResult:Z

.field private filterListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/String;",
            "-",
            "Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private keyPreImeListener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3",
            "<-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onKey:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Landroid/view/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onKeyPreIme:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Landroid/view/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onSelectionChanged:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private searchStateChangeListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private selectionChangedListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private settingAutoComplete:Z

.field private textChangeListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private windowFocusChangeListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    .line 609
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

    .line 610
    const-string v0, "#ffb5007f"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->DEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->ctx:Landroid/content/Context;

    .line 108
    sget-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;

    invoke-virtual {v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;->emptyResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v0

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .line 126
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;

    invoke-direct {v0, p0, p2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$autoCompleteBackgroundColor$1;-><init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/util/AttributeSet;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompleteBackgroundColor:I

    .line 134
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;

    invoke-direct {v0, p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKeyPreIme$1;-><init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onKeyPreIme:Lkotlin/jvm/functions/Function3;

    .line 158
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKey$1;

    invoke-direct {v0, p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onKey$1;-><init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onKey:Lkotlin/jvm/functions/Function3;

    .line 174
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;

    invoke-direct {v0, p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onSelectionChanged$1;-><init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onSelectionChanged:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    .prologue
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    :goto_0
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_0

    .line 65
    sget p3, Lmozilla/components/ui/autocomplete/R$attr;->editTextStyle:I

    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static final synthetic access$commitAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->commitAutocomplete(Landroid/text/Editable;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getAUTOCOMPLETE_SPAN$cp()Landroid/text/NoCopySpan$Concrete;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

    return-object v0
.end method

.method public static final synthetic access$getCommitListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 62
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->commitListener:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR$cp()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->DEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR:I

    return v0
.end method

.method public static final synthetic access$getFilterListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 62
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->filterListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$getSearchStateChangeListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 62
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->searchStateChangeListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSettingAutoComplete$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Z
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 62
    iget-boolean v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->settingAutoComplete:Z

    return v0
.end method

.method public static final synthetic access$getTextChangeListener$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;

    .prologue
    .line 62
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->textChangeListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$removeAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/text/Editable;)Z
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->removeAutocomplete(Landroid/text/Editable;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setAutoCompletePrefixLength$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;I)V
    .locals 0
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .param p1, "<set-?>"    # I

    .prologue
    .line 62
    iput p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompletePrefixLength:I

    return-void
.end method

.method public static final synthetic access$setDiscardAutoCompleteResult$p(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Z)V
    .locals 0
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    .param p1, "<set-?>"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->discardAutoCompleteResult:Z

    return-void
.end method

.method private final beginSettingAutocomplete()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->beginBatchEdit()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->settingAutoComplete:Z

    .line 259
    return-void
.end method

.method private final commitAutocomplete(Landroid/text/Editable;)Z
    .locals 6
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    sget-object v4, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 316
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 339
    :goto_0
    return v2

    .line 321
    :cond_0
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->beginSettingAutocomplete()V

    .line 324
    iget-object v4, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompleteSpans:[Ljava/lang/Object;

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    array-length v5, v4

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 325
    .local v0, "span":Ljava/lang/Object;
    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    .end local v0    # "span":Ljava/lang/Object;
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompletePrefixLength:I

    .line 333
    invoke-virtual {p0, v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setCursorVisible(Z)V

    .line 335
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->endSettingAutocomplete()V

    .line 338
    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->filterListener:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    :cond_3
    move v2, v3

    .line 339
    goto :goto_0
.end method

.method private final endSettingAutocomplete()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->settingAutoComplete:Z

    .line 266
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->endBatchEdit()V

    .line 267
    return-void
.end method

.method private final removeAutocomplete(Landroid/text/Editable;)Z
    .locals 3
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x1

    .line 287
    sget-object v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 288
    .local v0, "start":I
    if-gez v0, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 306
    :goto_0
    return v1

    .line 293
    :cond_0
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->beginSettingAutocomplete()V

    .line 296
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 300
    sget-object v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;

    invoke-virtual {v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;->emptyResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v2

    iput-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .line 303
    invoke-virtual {p0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setCursorVisible(Z)V

    .line 305
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->endSettingAutocomplete()V

    goto :goto_0
.end method

.method private final resetAutocompleteState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

    aput-object v2, v0, v1

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    iget v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompleteBackgroundColor:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v1, v0, v3

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompleteSpans:[Ljava/lang/Object;

    .line 274
    sget-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;

    invoke-virtual {v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;->emptyResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v0

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .line 277
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompletePrefixLength:I

    .line 278
    invoke-virtual {p0, v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setCursorVisible(Z)V

    .line 279
    return-void
.end method

.method private final setAutocompleteResult(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V
    .locals 0
    .param p1, "<set-?>"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .prologue
    .line 108
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    return-void
.end method


# virtual methods
.method public final getAutocompleteResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    return-object v0
.end method

.method public final getCtx()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public final getNonAutocompleteText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->access$getNonAutocompleteText(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOriginalText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompletePrefixLength:I

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatEditText;->onAttachedToWindow()V

    .line 198
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onKeyPreIme:Lkotlin/jvm/functions/Function3;

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->keyPreImeListener:Lkotlin/jvm/functions/Function3;

    .line 199
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onSelectionChanged:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->selectionChangedListener:Lkotlin/jvm/functions/Function2;

    .line 201
    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onKey:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_0

    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditTextKt$sam$android_view_View_OnKeyListener$0;

    invoke-direct {v0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditTextKt$sam$android_view_View_OnKeyListener$0;-><init>(Lkotlin/jvm/functions/Function3;)V

    :goto_0
    check-cast v0, Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;

    invoke-direct {v0, p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$TextChangeListener;-><init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final onAutocomplete(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;)V
    .locals 17
    .param p1, "result"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->discardAutoCompleteResult:Z

    if-eqz v5, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 355
    :cond_2
    sget-object v5, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;

    invoke-virtual {v5}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;->emptyResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 360
    .local v2, "text":Landroid/text/Editable;
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 361
    .local v4, "textLength":I
    invoke-virtual/range {p1 .. p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getLength()I

    move-result v7

    .line 362
    .local v7, "resultLength":I
    sget-object v5, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->AUTOCOMPLETE_SPAN:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {v2, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 363
    .local v3, "autoCompleteStart":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autocompleteResult:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    .line 365
    const/4 v5, -0x1

    if-le v3, v5, :cond_5

    .line 370
    invoke-virtual/range {p1 .. p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v5, v15, v6, v0, v3}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 374
    invoke-direct/range {p0 .. p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->beginSettingAutocomplete()V

    .line 378
    invoke-virtual/range {p1 .. p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move v6, v3

    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 381
    if-ne v3, v7, :cond_4

    .line 382
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setCursorVisible(Z)V

    .line 385
    :cond_4
    invoke-direct/range {p0 .. p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->endSettingAutocomplete()V

    .line 448
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_5
    if-le v7, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v5, v15, v6, v0, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 395
    const-class v5, Ljava/lang/Object;

    invoke-interface {v2, v4, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 396
    .local v14, "spans":[Ljava/lang/Object;
    array-length v5, v14

    new-array v13, v5, [I

    .line 397
    .local v13, "spanStarts":[I
    array-length v5, v14

    new-array v10, v5, [I

    .line 398
    .local v10, "spanEnds":[I
    array-length v5, v14

    new-array v12, v5, [I

    .line 401
    .local v12, "spanFlags":[I
    const/4 v8, 0x0

    const-string v5, "spans"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v14

    :goto_2
    if-ge v8, v5, :cond_7

    .line 402
    aget-object v9, v14, v8

    .line 403
    .local v9, "span":Ljava/lang/Object;
    invoke-interface {v2, v9}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    .line 407
    .local v11, "spanFlag":I
    and-int/lit16 v6, v11, 0x100

    if-nez v6, :cond_6

    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq v9, v6, :cond_6

    sget-object v6, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-eq v9, v6, :cond_6

    .line 401
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .local v8, "i":I
    goto :goto_2

    .line 413
    .end local v8    # "i":I
    :cond_6
    invoke-interface {v2, v9}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    aput v6, v13, v8

    .line 414
    invoke-interface {v2, v9}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    aput v6, v10, v8

    .line 415
    aput v11, v12, v8

    goto :goto_3

    .line 418
    .end local v9    # "span":Ljava/lang/Object;
    .end local v11    # "spanFlag":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->beginSettingAutocomplete()V

    .line 421
    invoke-virtual/range {p1 .. p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->getText()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v2, v5, v4, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 424
    const/4 v8, 0x0

    array-length v5, v14

    :goto_4
    if-ge v8, v5, :cond_9

    .line 425
    aget v11, v12, v8

    .line 426
    .restart local v11    # "spanFlag":I
    if-nez v11, :cond_8

    .line 424
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .restart local v8    # "i":I
    goto :goto_4

    .line 430
    .end local v8    # "i":I
    :cond_8
    aget-object v6, v14, v8

    aget v15, v13, v8

    aget v16, v10, v8

    move/from16 v0, v16

    invoke-interface {v2, v6, v15, v0, v11}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 434
    .end local v11    # "spanFlag":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->autoCompleteSpans:[Ljava/lang/Object;

    if-nez v6, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    array-length v15, v6

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v15, :cond_b

    aget-object v9, v6, v5

    .line 435
    .restart local v9    # "span":Ljava/lang/Object;
    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-interface {v2, v9, v4, v7, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 434
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 439
    .end local v9    # "span":Ljava/lang/Object;
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->setCursorVisible(Z)V

    .line 445
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->bringPointIntoView(I)Z

    .line 447
    invoke-direct/range {p0 .. p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->endSettingAutocomplete()V

    goto/16 :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const-string v1, "outAttrs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v0, v2}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$onCreateInputConnection$1;-><init>(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputConnection;Z)V

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return-object v1

    .line 462
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 210
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 212
    .local v2, "isActive":Z
    :cond_0
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->searchStateChangeListener:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Unit;

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    .line 215
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->resetAutocompleteState()V

    .line 227
    :goto_0
    return-void

    .line 219
    :cond_2
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, "text"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->removeAutocomplete(Landroid/text/Editable;)Z

    .line 221
    iget-object v3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->ctx:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 222
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    nop

    .line 223
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->keyPreImeListener:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectionChanged(II)V
    .locals 3
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->selectionChangedListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 574
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->onSelectionChanged(II)V

    .line 575
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const-string v2, "event"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 595
    nop

    .line 596
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 583
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 600
    .local v0, "ignored":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->clearFocus()V

    goto :goto_0

    .line 604
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 578
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onWindowFocusChanged(Z)V

    .line 579
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->windowFocusChangeListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 580
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 245
    invoke-virtual {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 246
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast p0, Landroid/view/View;

    .end local p0    # "this":Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 249
    :goto_0
    return-void

    .line 248
    .restart local p0    # "this":Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public final setOnCommitListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->commitListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnFilterListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/String;",
            "-",
            "Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->filterListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnKeyPreImeListener(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3",
            "<-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/view/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->keyPreImeListener:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setOnSearchStateChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->searchStateChangeListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectionChangedListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->selectionChangedListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnTextChangeListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->textChangeListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnWindowsFocusChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "l"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->windowFocusChangeListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const-string v1, "type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    .local v0, "textString":Ljava/lang/String;
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "textString":Ljava/lang/String;
    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 235
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->resetAutocompleteState()V

    .line 236
    return-void

    .line 231
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
