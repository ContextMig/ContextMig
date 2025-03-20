.class Lchan/android/app/pocketnote/app/notes/NoteEditor;
.super Landroid/widget/EditText;
.source "NoteEditor.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x44cd0f99314f51f4L    # -1.5666030461831742E-23

    const-string v2, "chan/android/app/pocketnote/app/notes/NoteEditor"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->rect:Landroid/graphics/Rect;

    aput-boolean v3, v0, v3

    .line 21
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 22
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 23
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->paint:Landroid/graphics/Paint;

    const-string v2, "#e5e500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->$jacocoInit()[Z

    move-result-object v10

    .line 37
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getHeight()I

    move-result v0

    const/4 v1, 0x6

    aput-boolean v11, v10, v1

    .line 38
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getLineHeight()I

    move-result v9

    .line 39
    .local v9, "lineHeight":I
    div-int v7, v0, v9

    const/4 v0, 0x7

    aput-boolean v11, v10, v0

    .line 42
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getLineCount()I

    move-result v0

    if-gt v0, v7, :cond_0

    const/16 v0, 0x8

    aput-boolean v11, v10, v0

    .line 47
    :goto_0
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v8, v0}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v6

    .line 48
    .local v6, "baseline":I
    const/16 v0, 0xb

    aput-boolean v11, v10, v0

    :goto_1
    if-ge v8, v7, :cond_1

    const/16 v0, 0xc

    aput-boolean v11, v10, v0

    .line 49
    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v2, v0

    iget-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    add-int/lit8 v0, v6, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v0, 0xd

    aput-boolean v11, v10, v0

    .line 51
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getLineHeight()I

    move-result v0

    add-int/2addr v6, v0

    .line 48
    add-int/lit8 v8, v8, 0x1

    .local v8, "i":I
    const/16 v0, 0xe

    aput-boolean v11, v10, v0

    goto :goto_1

    .line 42
    .end local v6    # "baseline":I
    .end local v8    # "i":I
    :cond_0
    const/16 v0, 0x9

    aput-boolean v11, v10, v0

    .line 43
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->getLineCount()I

    move-result v7

    .local v7, "count":I
    const/16 v0, 0xa

    aput-boolean v11, v10, v0

    goto :goto_0

    .line 53
    .end local v7    # "count":I
    .restart local v6    # "baseline":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    const/16 v0, 0xf

    aput-boolean v11, v10, v0

    return-void
.end method

.method public setLineColor(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteEditor;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NoteEditor;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
