.class Lcom/github/amlcurran/showcaseview/TextDrawer;
.super Ljava/lang/Object;
.source "TextDrawer.java"


# static fields
.field private static final INDEX_TEXT_START_X:I = 0x0

.field private static final INDEX_TEXT_START_Y:I = 0x1

.field private static final INDEX_TEXT_WIDTH:I = 0x2


# instance fields
.field private final actionBarOffset:F

.field private final context:Landroid/content/Context;

.field private detailTextAlignment:Landroid/text/Layout$Alignment;

.field private forcedTextPosition:I

.field private hasRecalculated:Z

.field private mBestTextPosition:[F

.field private mDetailSpan:Landroid/text/style/TextAppearanceSpan;

.field private mDetails:Ljava/lang/CharSequence;

.field private mDynamicDetailLayout:Landroid/text/DynamicLayout;

.field private mDynamicTitleLayout:Landroid/text/DynamicLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSpan:Landroid/text/style/TextAppearanceSpan;

.field private final padding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private final titlePaint:Landroid/text/TextPaint;

.field private titleTextAlignment:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/Context;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->detailTextAlignment:Landroid/text/Layout$Alignment;

    .line 46
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titleTextAlignment:Landroid/text/Layout$Alignment;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->forcedTextPosition:I

    .line 58
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->text_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    .line 59
    sget v0, Lcom/github/amlcurran/showcaseview/R$dimen;->action_bar_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->actionBarOffset:F

    .line 61
    iput-object p2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->context:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    .line 64
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 66
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    .line 67
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public calculateTextPosition(IIZLandroid/graphics/Rect;)V
    .locals 10
    .param p1, "canvasW"    # I
    .param p2, "canvasH"    # I
    .param p3, "shouldCentreText"    # Z
    .param p4, "showcase"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 131
    const/4 v3, 0x4

    new-array v0, v3, [I

    .line 132
    .local v0, "areas":[I
    iget v3, p4, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, p2

    aput v3, v0, v7

    .line 133
    iget v3, p4, Landroid/graphics/Rect;->top:I

    mul-int/2addr v3, p1

    aput v3, v0, v6

    .line 134
    iget v3, p4, Landroid/graphics/Rect;->right:I

    sub-int v3, p1, v3

    mul-int/2addr v3, p2

    aput v3, v0, v8

    .line 135
    const/4 v3, 0x3

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p2, v4

    mul-int/2addr v4, p1

    aput v4, v0, v3

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "largest":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 139
    aget v3, v0, v1

    aget v4, v0, v2

    if-le v3, v4, :cond_0

    .line 140
    move v2, v1

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->forcedTextPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 144
    iget v2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->forcedTextPosition:I

    .line 148
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 170
    :goto_1
    if-eqz p3, :cond_3

    .line 172
    packed-switch v2, :pswitch_data_1

    .line 193
    :goto_2
    iput-boolean v6, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    .line 194
    return-void

    .line 150
    :pswitch_0
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v4, v3, v7

    .line 151
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v4, v3, v6

    .line 152
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    aput v4, v3, v8

    goto :goto_1

    .line 155
    :pswitch_1
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v4, v3, v7

    .line 156
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->actionBarOffset:F

    add-float/2addr v4, v5

    aput v4, v3, v6

    .line 157
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    int-to-float v4, p1

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    aput v4, v3, v8

    goto :goto_1

    .line 160
    :pswitch_2
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    add-float/2addr v4, v5

    aput v4, v3, v7

    .line 161
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v4, v3, v6

    .line 162
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p4, Landroid/graphics/Rect;->right:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    aput v4, v3, v8

    goto :goto_1

    .line 165
    :pswitch_3
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    aput v4, v3, v7

    .line 166
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    add-float/2addr v4, v5

    aput v4, v3, v6

    .line 167
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    int-to-float v4, p1

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->padding:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    aput v4, v3, v8

    goto :goto_1

    .line 175
    :pswitch_4
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v4, v3, v6

    div-int/lit8 v5, p2, 0x4

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v3, v6

    goto :goto_2

    .line 179
    :pswitch_5
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v4, v3, v8

    div-float/2addr v4, v9

    aput v4, v3, v8

    .line 180
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v4, v3, v7

    div-int/lit8 v5, p1, 0x4

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v3, v7

    goto/16 :goto_2

    .line 185
    :cond_3
    packed-switch v2, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_2

    .line 188
    :pswitch_7
    iget-object v3, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    aget v4, v3, v6

    iget v5, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->actionBarOffset:F

    add-float/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_2

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 185
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->shouldDrawText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->getBestTextPosition()[F

    move-result-object v9

    .line 73
    .local v9, "textPosition":[F
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 75
    .local v3, "width":I
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titleTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    iget-boolean v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->detailTextAlignment:Landroid/text/Layout$Alignment;

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicTitleLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 95
    .local v8, "offsetForTitle":F
    :goto_0
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    if-eqz v0, :cond_3

    .line 96
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    add-float/2addr v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    .end local v3    # "width":I
    .end local v8    # "offsetForTitle":F
    .end local v9    # "textPosition":[F
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->hasRecalculated:Z

    .line 104
    return-void

    .line 94
    .restart local v3    # "width":I
    .restart local v9    # "textPosition":[F
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public forceTextPosition(I)V
    .locals 2
    .param p1, "textPosition"    # I

    .prologue
    .line 231
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ShowcaseView text was forced with an invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    iput p1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->forcedTextPosition:I

    .line 235
    return-void
.end method

.method public getBestTextPosition()[F
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mBestTextPosition:[F

    return-object v0
.end method

.method public setContentPaint(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "contentPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 216
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "details"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .local v0, "ssbDetail":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetailSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 110
    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    .line 112
    .end local v0    # "ssbDetail":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v0, "ssbTitle":Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitleSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    .line 120
    .end local v0    # "ssbTitle":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method

.method public setDetailStyling(I)V
    .locals 2
    .param p1, "styleId"    # I

    .prologue
    .line 202
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetailSpan:Landroid/text/style/TextAppearanceSpan;

    .line 203
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setDetailTextAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->detailTextAlignment:Landroid/text/Layout$Alignment;

    .line 224
    return-void
.end method

.method public setTitlePaint(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 220
    return-void
.end method

.method public setTitleStyling(I)V
    .locals 2
    .param p1, "styleId"    # I

    .prologue
    .line 197
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitleSpan:Landroid/text/style/TextAppearanceSpan;

    .line 198
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/github/amlcurran/showcaseview/TextDrawer;->setContentTitle(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public setTitleTextAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0
    .param p1, "titleTextAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->titleTextAlignment:Landroid/text/Layout$Alignment;

    .line 228
    return-void
.end method

.method public shouldDrawText()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/amlcurran/showcaseview/TextDrawer;->mDetails:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
