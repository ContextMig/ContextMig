.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x70dac096fd1cc622L

    const-string v2, "android/support/v7/recyclerview/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Landroid/support/v7/recyclerview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    aput-boolean v2, v0, v2

    return-void

    :array_0
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0100eb
        0x7f0100ec
        0x7f0100ed
        0x7f0100ee
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/support/v7/recyclerview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
