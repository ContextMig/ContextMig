.class public final Lchan/android/app/pocketnote/R$menu;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "menu"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final blank:I = 0x7f0e0000

.field public static final calendar:I = 0x7f0e0001

.field public static final notes:I = 0x7f0e0002

.field public static final reminder:I = 0x7f0e0003

.field public static final search:I = 0x7f0e0004

.field public static final trash:I = 0x7f0e0005


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/R$menu;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5c72896b57a9a284L

    const-string v2, "chan/android/app/pocketnote/R$menu"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/R$menu;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/R$menu;->$jacocoInit()[Z

    move-result-object v0

    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
