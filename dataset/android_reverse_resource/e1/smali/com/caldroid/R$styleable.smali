.class public final Lcom/caldroid/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caldroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final Cell:[I

.field public static final Cell_android_background:I = 0x1

.field public static final Cell_android_textColor:I = 0x0

.field public static final DateState:[I

.field public static final DateState_state_date_disabled:I = 0x2

.field public static final DateState_state_date_prev_next_month:I = 0x3

.field public static final DateState_state_date_selected:I = 0x1

.field public static final DateState_state_date_today:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/caldroid/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x382a2496ccd31588L    # -1.1621213852419131E38

    const-string v2, "com/caldroid/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/caldroid/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/caldroid/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/caldroid/R$styleable;->Cell:[I

    .line 99
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/caldroid/R$styleable;->DateState:[I

    aput-boolean v2, v0, v2

    return-void

    .line 96
    :array_0
    .array-data 4
        0x1010098
        0x10100d4
    .end array-data

    .line 99
    :array_1
    .array-data 4
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/caldroid/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
