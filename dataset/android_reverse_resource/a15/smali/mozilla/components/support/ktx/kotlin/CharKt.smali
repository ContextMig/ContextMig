.class public final Lmozilla/components/support/ktx/kotlin/CharKt;
.super Ljava/lang/Object;
.source "Char.kt"


# direct methods
.method public static final getELLIPSIS(Lkotlin/jvm/internal/CharCompanionObject;)C
    .locals 1
    .param p0, "$receiver"    # Lkotlin/jvm/internal/CharCompanionObject;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const/16 v0, 0x2026

    return v0
.end method
