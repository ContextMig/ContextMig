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

.field public static final FloatingActionButton_fab_colorDisabled:I = 0x2

.field public static final FloatingActionButton_fab_colorNormal:I = 0x3

.field public static final FloatingActionButton_fab_colorPressed:I = 0x1

.field public static final FloatingActionButton_fab_icon:I = 0x4

.field public static final FloatingActionButton_fab_size:I = 0x5

.field public static final FloatingActionButton_fab_stroke_visible:I = 0x7

.field public static final FloatingActionButton_fab_title:I = 0x6

.field public static final FloatingActionsMenu:[I

.field public static final FloatingActionsMenu_fab_addButtonColorNormal:I = 0x1

.field public static final FloatingActionsMenu_fab_addButtonColorPressed:I = 0x0

.field public static final FloatingActionsMenu_fab_addButtonPlusIconColor:I = 0x3

.field public static final FloatingActionsMenu_fab_addButtonSize:I = 0x2

.field public static final FloatingActionsMenu_fab_addButtonStrokeVisible:I = 0x4

.field public static final FloatingActionsMenu_fab_expandDirection:I = 0x7

.field public static final FloatingActionsMenu_fab_labelStyle:I = 0x5

.field public static final FloatingActionsMenu_fab_labelsPosition:I = 0x6


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x53b958442386af0dL    # 2.1146930570218904E95

    const-string v2, "com/getbase/floatingactionbutton/R$styleable"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    new-array v1, v4, [I

    const/4 v2, 0x0

    const v3, 0x7f010029

    aput v3, v1, v2

    sput-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    .line 57
    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    .line 65
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    aput-boolean v4, v0, v4

    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f010024
        0x7f0100e3
        0x7f0100e4
        0x7f0100e5
        0x7f0100e6
        0x7f0100e7
        0x7f0100e8
        0x7f0100e9
        0x7f0100ea
        0x7f0100eb
        0x7f0100ec
        0x7f0100ed
        0x7f0100ee
        0x7f01016d
        0x7f01016e
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x7f0100f0
        0x7f0100f1
        0x7f0100f2
        0x7f0100f3
        0x7f0100f4
        0x7f0100f5
        0x7f0100f6
        0x7f0100f7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/getbase/floatingactionbutton/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
