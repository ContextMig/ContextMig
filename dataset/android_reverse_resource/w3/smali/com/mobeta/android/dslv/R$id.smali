.class public final Lcom/mobeta/android/dslv/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final clickRemove:I = 0x7f0c001d

.field public static final flingRemove:I = 0x7f0c001e

.field public static final onDown:I = 0x7f0c001f

.field public static final onLongPress:I = 0x7f0c0020

.field public static final onMove:I = 0x7f0c0021


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/mobeta/android/dslv/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2ce032636fec9be9L    # 1.552963892326587E-92

    const-string v2, "com/mobeta/android/dslv/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/mobeta/android/dslv/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/mobeta/android/dslv/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
