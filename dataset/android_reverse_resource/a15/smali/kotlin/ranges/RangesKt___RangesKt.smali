.class Lkotlin/ranges/RangesKt___RangesKt;
.super Lkotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n*L\n1#1,960:1\n*E\n"
.end annotation


# direct methods
.method public static final coerceAtLeast(II)I
    .locals 0
    .param p0, "$receiver"    # I
    .param p1, "minimumValue"    # I

    .prologue
    .line 688
    if-ge p0, p1, :cond_0

    .end local p1    # "minimumValue":I
    :goto_0
    return p1

    .restart local p1    # "minimumValue":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final coerceAtLeast(JJ)J
    .locals 2
    .param p0, "$receiver"    # J
    .param p2, "minimumValue"    # J

    .prologue
    .line 698
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .end local p2    # "minimumValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "minimumValue":J
    :cond_0
    move-wide p2, p0

    goto :goto_0
.end method

.method public static final coerceAtMost(II)I
    .locals 0
    .param p0, "$receiver"    # I
    .param p1, "maximumValue"    # I

    .prologue
    .line 758
    if-le p0, p1, :cond_0

    .end local p1    # "maximumValue":I
    :goto_0
    return p1

    .restart local p1    # "maximumValue":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method public static final coerceAtMost(JJ)J
    .locals 2
    .param p0, "$receiver"    # J
    .param p2, "maximumValue"    # J

    .prologue
    .line 768
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .end local p2    # "maximumValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "maximumValue":J
    :cond_0
    move-wide p2, p0

    goto :goto_0
.end method

.method public static final coerceIn(III)I
    .locals 3
    .param p0, "$receiver"    # I
    .param p1, "minimumValue"    # I
    .param p2, "maximumValue"    # I

    .prologue
    .line 843
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than minimum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 844
    :cond_0
    if-ge p0, p1, :cond_1

    .line 846
    .end local p1    # "minimumValue":I
    :goto_0
    return p1

    .line 845
    .restart local p1    # "minimumValue":I
    :cond_1
    if-le p0, p2, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    move p1, p0

    .line 846
    goto :goto_0
.end method

.method public static final downTo(II)Lkotlin/ranges/IntProgression;
    .locals 2
    .param p0, "$receiver"    # I
    .param p1, "to"    # I

    .prologue
    .line 305
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object v0

    return-object v0
.end method

.method public static final until(II)Lkotlin/ranges/IntRange;
    .locals 2
    .param p0, "$receiver"    # I
    .param p1, "to"    # I

    .prologue
    .line 552
    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_0

    sget-object v0, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {v0, p0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_0
.end method
