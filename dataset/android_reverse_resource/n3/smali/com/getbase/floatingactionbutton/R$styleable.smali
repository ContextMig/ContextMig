.class public final Lcom/getbase/floatingactionbutton/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final AddFloatingActionButton:[I

.field public static final AddFloatingActionButton_fab_plusIconColor:I = 0x0

.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_fab_colorNormal:I = 0x1

.field public static final FloatingActionButton_fab_colorPressed:I = 0x0

.field public static final FloatingActionButton_fab_icon:I = 0x2

.field public static final FloatingActionButton_fab_size:I = 0x3

.field public static final FloatingActionButton_fab_title:I = 0x4

.field public static final FloatingActionsMenu:[I

.field public static final FloatingActionsMenu_fab_addButtonColorNormal:I = 0x1

.field public static final FloatingActionsMenu_fab_addButtonColorPressed:I = 0x0

.field public static final FloatingActionsMenu_fab_addButtonPlusIconColor:I = 0x2

.field public static final FloatingActionsMenu_fab_expandDirection:I = 0x4

.field public static final FloatingActionsMenu_fab_labelStyle:I = 0x3


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x38c2a25763982ff2L    # 2.8037546621095016E-35

    const-string v2, "com/getbase/floatingactionbutton/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    invoke-static {}, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    new-array v1, v4, [I

    const/4 v2, 0x0

    const v3, 0x7f010021

    aput v3, v1, v2

    sput-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    .line 52
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    .line 58
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    aput-boolean v4, v0, v4

    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x7f0100ad
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x7f0100b2
        0x7f0100b3
        0x7f0100b4
        0x7f0100b5
        0x7f0100b6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
