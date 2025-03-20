.class public final Lcom/google/android/gms/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final adjust_height:I = 0x7f0f003f

.field public static final adjust_width:I = 0x7f0f0040

.field public static final auto:I = 0x7f0f0027

.field public static final center:I = 0x7f0f002b

.field public static final dark:I = 0x7f0f0049

.field public static final icon_only:I = 0x7f0f0046

.field public static final light:I = 0x7f0f004a

.field public static final none:I = 0x7f0f0016

.field public static final normal:I = 0x7f0f0012

.field public static final radio:I = 0x7f0f0069

.field public static final standard:I = 0x7f0f0047

.field public static final text:I = 0x7f0f00e4

.field public static final text2:I = 0x7f0f00e2

.field public static final toolbar:I = 0x7f0f007f

.field public static final wide:I = 0x7f0f0048

.field public static final wrap_content:I = 0x7f0f0026


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/google/android/gms/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xddc4cb506dbf24dL    # -6.568115157612301E241

    const-string v2, "com/google/android/gms/R$id"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/google/android/gms/R$id;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
