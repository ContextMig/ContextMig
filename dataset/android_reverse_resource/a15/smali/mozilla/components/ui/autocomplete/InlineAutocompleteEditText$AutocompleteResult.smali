.class public final Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;
.super Ljava/lang/Object;
.source "InlineAutocompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutocompleteResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInlineAutocompleteEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineAutocompleteEditText.kt\nmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult\n*L\n1#1,634:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;


# instance fields
.field private final isEmpty:Z

.field private final length:I

.field private final source:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final textFormatter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final totalItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->Companion:Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "totalItems"    # I
    .param p4, "textFormatter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    iput-object p2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->source:Ljava/lang/String;

    iput p3, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->totalItems:I

    iput-object p4, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->textFormatter:Lkotlin/jvm/functions/Function1;

    .line 74
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->isEmpty:Z

    .line 75
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->length:I

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    if-eqz v2, :cond_1

    check-cast p1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;

    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->source:Ljava/lang/String;

    iget-object v3, p1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->source:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->totalItems:I

    iget v3, p1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->totalItems:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->textFormatter:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->textFormatter:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final getFormattedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->textFormatter:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->length:I

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalItems()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->totalItems:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->source:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->totalItems:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->textFormatter:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->isEmpty:Z

    return v0
.end method

.method public final startsWith(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutocompleteResult(text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->totalItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textFormatter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/ui/autocomplete/InlineAutocompleteEditText$AutocompleteResult;->textFormatter:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
