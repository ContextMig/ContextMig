.class public final Lkotlin/jvm/internal/DoubleCompanionObject;
.super Ljava/lang/Object;
.source "PrimitiveCompanionObjects.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/jvm/internal/DoubleCompanionObject;",
        "",
        "()V",
        "MAX_VALUE",
        "",
        "getMAX_VALUE",
        "()D",
        "MIN_VALUE",
        "getMIN_VALUE",
        "NEGATIVE_INFINITY",
        "getNEGATIVE_INFINITY",
        "NaN",
        "getNaN",
        "POSITIVE_INFINITY",
        "getPOSITIVE_INFINITY",
        "kotlin-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

.field private static final MAX_VALUE:D = 1.7976931348623157E308

.field private static final MIN_VALUE:D = 4.9E-324

.field private static final NEGATIVE_INFINITY:D = -Infinity

.field private static final NaN:D = NaN

.field private static final POSITIVE_INFINITY:D = Infinity


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-direct {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMAX_VALUE()D
    .locals 2

    .line 21
    sget-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->MAX_VALUE:D

    return-wide v0
.end method

.method public final getMIN_VALUE()D
    .locals 2

    .line 20
    sget-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->MIN_VALUE:D

    return-wide v0
.end method

.method public final getNEGATIVE_INFINITY()D
    .locals 2

    .line 23
    sget-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->NEGATIVE_INFINITY:D

    return-wide v0
.end method

.method public final getNaN()D
    .locals 2

    .line 24
    sget-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->NaN:D

    return-wide v0
.end method

.method public final getPOSITIVE_INFINITY()D
    .locals 2

    .line 22
    sget-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->POSITIVE_INFINITY:D

    return-wide v0
.end method
