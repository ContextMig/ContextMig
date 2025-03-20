.class public final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;
.super Ljava/lang/Object;
.source "InlineAutocompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 81
    invoke-direct {p0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final emptyResult()Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 82
    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    const/16 v5, 0x8

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
