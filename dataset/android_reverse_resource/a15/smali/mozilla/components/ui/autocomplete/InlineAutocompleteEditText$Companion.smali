.class public final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;
.super Ljava/lang/Object;
.source "InlineAutocompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInlineAutocompleteEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineAutocompleteEditText.kt\nmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,634:1\n10249#2,2:635\n*E\n*S KotlinDebug\n*F\n+ 1 InlineAutocompleteEditText.kt\nmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion\n*L\n630#1,2:635\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 608
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNonAutocompleteText(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;Landroid/text/Editable;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->getNonAutocompleteText(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$hasCompositionString(Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;Landroid/text/Editable;)Z
    .locals 1
    .param p0, "$this"    # Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;
    .param p1, "content"    # Landroid/text/Editable;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->hasCompositionString(Landroid/text/Editable;)Z

    move-result v0

    return v0
.end method

.method private final getNonAutocompleteText(Landroid/text/Editable;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 618
    check-cast p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;

    .end local p0    # "this":Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;
    invoke-virtual {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$Companion;->getAUTOCOMPLETE_SPAN()Landroid/text/NoCopySpan$Concrete;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 619
    .local v0, "start":I
    if-gez v0, :cond_0

    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    .end local p1    # "text":Landroid/text/Editable;
    :goto_0
    return-object v1

    .line 624
    .restart local p1    # "text":Landroid/text/Editable;
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "text":Landroid/text/Editable;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextUtils.substring(text, 0, start)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final hasCompositionString(Landroid/text/Editable;)Z
    .locals 9
    .param p1, "content"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 629
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 630
    .local v3, "spans":[Ljava/lang/Object;
    const-string v6, "spans"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 635
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    array-length v8, v0

    move v7, v5

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, v0, v7

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    .line 630
    .local v2, "span":Ljava/lang/Object;
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_0

    move v6, v4

    :goto_1
    if-eqz v6, :cond_1

    .line 636
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "span":Ljava/lang/Object;
    :goto_2
    return v4

    .restart local v1    # "element$iv":Ljava/lang/Object;
    .restart local v2    # "span":Ljava/lang/Object;
    :cond_0
    move v6, v5

    .line 630
    goto :goto_1

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "span":Ljava/lang/Object;
    :cond_2
    move v4, v5

    .line 636
    goto :goto_2
.end method


# virtual methods
.method public final getAUTOCOMPLETE_SPAN()Landroid/text/NoCopySpan$Concrete;
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getAUTOCOMPLETE_SPAN$cp()Landroid/text/NoCopySpan$Concrete;

    move-result-object v0

    return-object v0
.end method

.method public final getDEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR()I
    .locals 1

    .prologue
    .line 610
    invoke-static {}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;->access$getDEFAULT_AUTOCOMPLETE_BACKGROUND_COLOR$cp()I

    move-result v0

    return v0
.end method
