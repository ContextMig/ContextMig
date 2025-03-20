.class Lchan/android/app/pocketnote/app/calendar/BucketNoteView;
.super Landroid/view/View;
.source "BucketNoteView.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private colorMatrix:[[I

.field private column:I

.field private paint:Landroid/graphics/Paint;

.field private row:I

.field private size:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1331e14362a12cf6L

    const-string v2, "chan/android/app/pocketnote/app/calendar/BucketNoteView"

    const/16 v3, 0x34

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    aput-boolean v2, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 52
    invoke-direct {p0, p1, p2}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lchan/android/app/pocketnote/R$styleable;->BucketNoteView:[I

    invoke-virtual {v0, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v0, 0x4

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v1, v0

    .line 58
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->row:I

    const/4 v0, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 59
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->column:I

    const/4 v0, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 60
    const/4 v0, 0x2

    const/16 v3, 0x14

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    .line 62
    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->row:I

    iget v3, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->column:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->colorMatrix:[[I

    const/4 v0, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 66
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->borderPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 69
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->borderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 70
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->borderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 71
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->borderPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    const/16 v0, 0xf

    aput-boolean v4, v1, v0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    throw v0
.end method

.method private measureHeight(I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v2

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/16 v4, 0x11

    aput-boolean v6, v2, v4

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 86
    .local v1, "specSize":I
    const/4 v0, 0x0

    .line 87
    .local v0, "result":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_0

    .line 88
    move v0, v1

    const/16 v3, 0x12

    aput-boolean v6, v2, v3

    .line 95
    :goto_0
    const/16 v3, 0x16

    aput-boolean v6, v2, v3

    return v0

    .line 90
    :cond_0
    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->row:I

    iget v5, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    mul-int/2addr v4, v5

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->getPaddingTop()I

    move-result v5

    add-int v0, v4, v5

    .line 91
    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    const/16 v3, 0x13

    aput-boolean v6, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    aput-boolean v6, v2, v3

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v3, 0x15

    aput-boolean v6, v2, v3

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v2

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/16 v4, 0x17

    aput-boolean v6, v2, v4

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 101
    .local v1, "specSize":I
    const/4 v0, 0x0

    .line 102
    .local v0, "result":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_0

    .line 103
    move v0, v1

    const/16 v3, 0x18

    aput-boolean v6, v2, v3

    .line 110
    :goto_0
    const/16 v3, 0x1c

    aput-boolean v6, v2, v3

    return v0

    .line 105
    :cond_0
    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->column:I

    iget v5, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    mul-int/2addr v4, v5

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 106
    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    const/16 v3, 0x19

    aput-boolean v6, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x1a

    aput-boolean v6, v2, v3

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v3, 0x1b

    aput-boolean v6, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v11

    .line 135
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    const/4 v7, 0x0

    .line 137
    .local v7, "left":I
    const/4 v9, 0x0

    .line 138
    .local v9, "top":I
    const/16 v0, 0x2a

    aput-boolean v12, v11, v0

    move v8, v10

    :goto_0
    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->row:I

    if-ge v8, v0, :cond_2

    .line 139
    const/4 v7, 0x0

    .line 140
    const/16 v0, 0x2b

    aput-boolean v12, v11, v0

    move v6, v10

    :goto_1
    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->column:I

    if-ge v6, v0, :cond_1

    .line 141
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->colorMatrix:[[I

    aget-object v0, v0, v8

    aget v0, v0, v6

    if-nez v0, :cond_0

    const/16 v0, 0x2c

    aput-boolean v12, v11, v0

    .line 146
    :goto_2
    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    add-int/2addr v7, v0

    .line 140
    add-int/lit8 v6, v6, 0x1

    .local v6, "c":I
    const/16 v0, 0x31

    aput-boolean v12, v11, v0

    goto :goto_1

    .line 141
    .end local v6    # "c":I
    :cond_0
    const/16 v0, 0x2d

    aput-boolean v12, v11, v0

    .line 142
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->colorMatrix:[[I

    aget-object v1, v1, v8

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x2e

    aput-boolean v12, v11, v0

    .line 143
    int-to-float v1, v7

    int-to-float v2, v9

    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v0, 0x2f

    aput-boolean v12, v11, v0

    .line 144
    int-to-float v1, v7

    int-to-float v2, v9

    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v0, 0x30

    aput-boolean v12, v11, v0

    goto :goto_2

    .line 148
    :cond_1
    iget v0, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->size:I

    add-int/2addr v9, v0

    .line 138
    add-int/lit8 v8, v8, 0x1

    .local v8, "r":I
    const/16 v0, 0x32

    aput-boolean v12, v11, v0

    goto :goto_0

    .line 150
    .end local v8    # "r":I
    :cond_2
    const/16 v0, 0x33

    aput-boolean v12, v11, v0

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->measureWidth(I)I

    move-result v1

    invoke-direct {p0, p2}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->measureHeight(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->setMeasuredDimension(II)V

    .line 81
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setNoteColors(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->$jacocoInit()[Z

    move-result-object v6

    .line 114
    if-nez p1, :cond_0

    const/16 v4, 0x1d

    aput-boolean v9, v6, v4

    .line 115
    :goto_0
    const/16 v4, 0x1f

    aput-boolean v9, v6, v4

    .line 131
    .local v1, "i":I
    .local v2, "n":I
    :goto_1
    return-void

    .line 114
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1e

    aput-boolean v9, v6, v4

    goto :goto_0

    .line 118
    :cond_1
    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->row:I

    iget v7, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->column:I

    mul-int/2addr v7, v4

    const/16 v4, 0x20

    aput-boolean v9, v6, v4

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 120
    .restart local v2    # "n":I
    const/4 v1, 0x0

    .line 121
    .restart local v1    # "i":I
    const/16 v4, 0x21

    aput-boolean v9, v6, v4

    move v3, v5

    :goto_2
    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->row:I

    if-ge v3, v4, :cond_5

    .line 122
    const/16 v4, 0x22

    aput-boolean v9, v6, v4

    move v0, v5

    :goto_3
    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->column:I

    if-ge v0, v4, :cond_4

    const/16 v4, 0x23

    aput-boolean v9, v6, v4

    .line 123
    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->colorMatrix:[[I

    aget-object v8, v4, v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lchan/android/app/pocketnote/app/Note;

    invoke-virtual {v4}, Lchan/android/app/pocketnote/app/Note;->getColor()I

    move-result v4

    aput v4, v8, v0

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    if-ne v1, v7, :cond_2

    const/16 v4, 0x24

    aput-boolean v9, v6, v4

    .line 126
    :goto_4
    const/16 v4, 0x26

    aput-boolean v9, v6, v4

    goto :goto_1

    .line 125
    :cond_2
    if-ne v1, v2, :cond_3

    const/16 v4, 0x25

    aput-boolean v9, v6, v4

    goto :goto_4

    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .local v0, "c":I
    const/16 v4, 0x27

    aput-boolean v9, v6, v4

    goto :goto_3

    .line 121
    .end local v0    # "c":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .local v3, "r":I
    const/16 v4, 0x28

    aput-boolean v9, v6, v4

    goto :goto_2

    .line 130
    .end local v3    # "r":I
    :cond_5
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;->invalidate()V

    .line 131
    const/16 v4, 0x29

    aput-boolean v9, v6, v4

    goto :goto_1
.end method
