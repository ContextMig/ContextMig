.class public Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/util/view/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static NO_SPACING:I


# instance fields
.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x154346d6304317d8L    # -1.440891563946654E206

    const-string v2, "chan/android/app/pocketnote/util/view/FlowLayout$LayoutParams"

    const/16 v3, 0x17

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 281
    const/4 v1, -0x1

    sput v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 294
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 284
    sget v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 285
    sget v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->newLine:Z

    .line 295
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 289
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    sget v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 285
    sget v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 286
    iput-boolean v3, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->newLine:Z

    aput-boolean v2, v0, v3

    .line 290
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 298
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    sget v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 285
    sget v1, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    iput v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacing:I

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->newLine:Z

    .line 299
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 280
    iget-boolean v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->newLine:Z

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 280
    iget v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacing:I

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 280
    iget v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 280
    iget v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->x:I

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$400(Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;)I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 280
    iget v1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->y:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v1

    .line 315
    sget-object v0, Lchan/android/app/pocketnote/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v0, 0xb

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 317
    const/4 v0, 0x1

    sget v3, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    const/16 v0, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 318
    const/4 v0, 0x2

    sget v3, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacing:I

    const/16 v0, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 319
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->newLine:Z

    const/16 v0, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    const/16 v0, 0x10

    aput-boolean v4, v1, v0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    throw v0
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v2

    .line 302
    iget v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->horizontalSpacing:I

    sget v3, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x6

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x5

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v0

    .line 310
    iput p1, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->x:I

    .line 311
    iput p2, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->y:I

    .line 312
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->$jacocoInit()[Z

    move-result-object v2

    .line 306
    iget v0, p0, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->verticalSpacing:I

    sget v3, Lchan/android/app/pocketnote/util/view/FlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x9

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x8

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
