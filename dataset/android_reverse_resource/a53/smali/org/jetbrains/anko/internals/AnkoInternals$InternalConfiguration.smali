.class final Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;
.super Ljava/lang/Object;
.source "Internals.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jetbrains/anko/internals/AnkoInternals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;",
        "",
        "()V",
        "DENSITY_DPI_NONE",
        "",
        "getDENSITY_DPI_NONE",
        "()I",
        "SCREENLAYOUT_LAYOUTDIR_MASK",
        "getSCREENLAYOUT_LAYOUTDIR_MASK",
        "SCREENLAYOUT_LAYOUTDIR_RTL",
        "getSCREENLAYOUT_LAYOUTDIR_RTL",
        "SCREENLAYOUT_LAYOUTDIR_SHIFT",
        "getSCREENLAYOUT_LAYOUTDIR_SHIFT",
        "UI_MODE_TYPE_APPLIANCE",
        "getUI_MODE_TYPE_APPLIANCE",
        "UI_MODE_TYPE_WATCH",
        "getUI_MODE_TYPE_WATCH",
        "common-compileReleaseKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x0
    }
.end annotation


# static fields
.field private static final DENSITY_DPI_NONE:I = 0xffff

.field public static final INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration; = null

.field private static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field private static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field private static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field private static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field private static final UI_MODE_TYPE_WATCH:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;

    invoke-direct {v0}, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    check-cast v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;

    sput-object v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->INSTANCE:Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;

    const/16 v0, 0xc0

    .line 95
    sput v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_MASK:I

    const/4 v0, 0x6

    .line 96
    sput v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_SHIFT:I

    .line 97
    sget v1, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_SHIFT:I

    const/4 v2, 0x2

    shl-int v1, v2, v1

    sput v1, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_RTL:I

    const/4 v1, 0x5

    .line 99
    sput v1, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->UI_MODE_TYPE_APPLIANCE:I

    .line 100
    sput v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->UI_MODE_TYPE_WATCH:I

    const v0, 0xffff

    .line 102
    sput v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->DENSITY_DPI_NONE:I

    return-void
.end method


# virtual methods
.method public final getDENSITY_DPI_NONE()I
    .locals 1

    .line 102
    sget v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->DENSITY_DPI_NONE:I

    return v0
.end method

.method public final getSCREENLAYOUT_LAYOUTDIR_MASK()I
    .locals 1

    .line 95
    sget v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_MASK:I

    return v0
.end method

.method public final getSCREENLAYOUT_LAYOUTDIR_RTL()I
    .locals 1

    .line 97
    sget v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_RTL:I

    return v0
.end method

.method public final getSCREENLAYOUT_LAYOUTDIR_SHIFT()I
    .locals 1

    .line 96
    sget v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->SCREENLAYOUT_LAYOUTDIR_SHIFT:I

    return v0
.end method

.method public final getUI_MODE_TYPE_APPLIANCE()I
    .locals 1

    .line 99
    sget v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->UI_MODE_TYPE_APPLIANCE:I

    return v0
.end method

.method public final getUI_MODE_TYPE_WATCH()I
    .locals 1

    .line 100
    sget v0, Lorg/jetbrains/anko/internals/AnkoInternals$InternalConfiguration;->UI_MODE_TYPE_WATCH:I

    return v0
.end method
