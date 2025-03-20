.class Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;
.super Ljava/lang/Object;
.source "Comparisons.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt\n*L\n1#1,331:1\n*E\n"
.end annotation


# direct methods
.method public static final compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/Comparable;
    .param p1, "b"    # Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<*>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 84
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 85
    :cond_0
    if-nez p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 86
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
