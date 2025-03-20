.class final Lcom/appflood/AFListActivity$c;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appflood/AFListActivity;Landroid/content/Context;)V
    .locals 10

    const/4 v9, -0x1

    const/high16 v6, 0x42900000    # 72.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/16 v8, 0xcb

    const/4 v7, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42b80000    # 92.0f

    iget v3, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p1, Lcom/appflood/AFListActivity;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/appflood/AFListActivity;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/appflood/AFListActivity$c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity$c;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v2, -0xf99999a

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->c:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/AFListActivity$c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    iget v1, p1, Lcom/appflood/AFListActivity;->w:F

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/appflood/AFListActivity$c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    const/16 v1, 0x43

    const/16 v2, 0x5f

    const/16 v3, 0x7d

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42080000    # 34.0f

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41000000    # 8.0f

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/AFListActivity$c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity$c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->b:Landroid/widget/TextView;

    iget v1, p1, Lcom/appflood/AFListActivity;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/appflood/AFListActivity$c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$c;->b:Landroid/widget/TextView;

    const/16 v1, 0x9e

    const/16 v2, 0xa4

    const/16 v3, 0xad

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x43730000    # 243.0f

    iget v2, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    iget v3, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    const/16 v2, 0xcc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/AFListActivity$c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42a20000    # 81.0f

    iget v3, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-wide v3, 0x4041400000000000L    # 34.5

    iget v5, p1, Lcom/appflood/AFListActivity;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x41300000    # 11.0f

    iget v3, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v7, v7, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p1, Lcom/appflood/AFListActivity;->i:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/appflood/AFListActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/appflood/AFListActivity$c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance v2, Lcom/appflood/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "newbg2.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/appflood/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appflood/c/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
        0x41100000    # 9.0f
    .end array-data
.end method
