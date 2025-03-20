.class Lkotlin/collections/MapsKt__MapsKt;
.super Lkotlin/collections/MapsKt__MapsJVMKt;
.source "Maps.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,718:1\n310#1:727\n321#1:732\n418#1,6:737\n443#1,6:743\n1051#2,4:719\n1051#2,4:723\n1051#2,4:728\n1051#2,4:733\n*E\n*S KotlinDebug\n*F\n+ 1 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n360#1:727\n375#1:732\n433#1,6:737\n458#1,6:743\n310#1,4:719\n321#1,4:723\n360#1,4:728\n375#1,4:733\n*E\n"
.end annotation


# direct methods
.method public static final mapCapacity(I)I
    .locals 1
    .param p0, "expectedSize"    # I

    .prologue
    .line 135
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 136
    add-int/lit8 v0, p0, 0x1

    .line 141
    :goto_0
    return v0

    .line 138
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 139
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 141
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method
