.class public final Lcom/admob/android/ads/aa;
.super Ljava/lang/Object;
.source "AdMobVideoOverlayNative.java"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Z

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    .line 62
    iput-object v0, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v0, p0, Lcom/admob/android/ads/aa;->a:Landroid/view/ViewGroup;

    .line 64
    iput-object v0, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/aa;->b:Z

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->b(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->b(Landroid/view/View;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/aa;->b:Z

    .line 241
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/admob/android/ads/p;FLcom/admob/android/ads/ac;Lcom/admob/android/ads/r;Ljava/lang/ref/WeakReference;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/admob/android/ads/p;",
            "F",
            "Lcom/admob/android/ads/ac;",
            "Lcom/admob/android/ads/r;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/admob/android/ads/aa;->f:Ljava/lang/ref/WeakReference;

    .line 76
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43a00000    # 320.0f

    mul-float v4, v4, p4

    float-to-int v4, v4

    const/high16 v5, 0x42080000    # 34.0f

    mul-float v5, v5, p4

    float-to-int v5, v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 78
    if-eqz v7, :cond_0

    .line 79
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    const/16 v5, 0x7f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static/range {v1 .. v6}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIF)V

    .line 81
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 82
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    const/high16 v5, 0x43a00000    # 320.0f

    mul-float v5, v5, p4

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x5

    const/high16 v5, 0x42080000    # 34.0f

    mul-float v5, v5, p4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x6

    const/high16 v5, 0x43a00000    # 320.0f

    mul-float v5, v5, p4

    aput v5, v3, v4

    const/4 v4, 0x7

    const/high16 v5, 0x42080000    # 34.0f

    mul-float v5, v5, p4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 85
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 87
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    .line 88
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 90
    iget-object v2, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/high16 v3, 0x40400000    # 3.0f

    mul-float v3, v3, p4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    iget-object v3, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    const-string v2, "Ads by AdMob"

    invoke-static {v2}, Lcom/admob/android/ads/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, p4

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    iget-object v3, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42080000    # 34.0f

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v2, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/admob/android/ads/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43a00000    # 320.0f

    mul-float v4, v4, p4

    float-to-int v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v5, v5, p4

    float-to-int v5, v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 127
    if-eqz v7, :cond_1

    .line 128
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 129
    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    const/16 v5, 0x7f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static/range {v1 .. v6}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIF)V

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 131
    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    const/high16 v5, 0x43a00000    # 320.0f

    mul-float v5, v5, p4

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x5

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v5, v5, p4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x6

    const/high16 v5, 0x43a00000    # 320.0f

    mul-float v5, v5, p4

    aput v5, v3, v4

    const/4 v4, 0x7

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v5, v5, p4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 134
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 136
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    .line 137
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 138
    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 139
    iget-object v2, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_1
    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    iget-object v1, v1, Lcom/admob/android/ads/p;->m:Ljava/util/Vector;

    .line 143
    if-eqz v1, :cond_4

    .line 144
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v8, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/admob/android/ads/o;

    .line 152
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42800000    # 64.0f

    mul-float v1, v1, p4

    float-to-int v1, v1

    const/4 v3, -0x2

    invoke-direct {v10, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p6 .. p6}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v4, v2, Lcom/admob/android/ads/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual/range {p6 .. p6}, Lcom/admob/android/ads/r;->b()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v4, v2, Lcom/admob/android/ads/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/high16 v11, 0x41e00000    # 28.0f

    mul-float v11, v11, p4

    float-to-int v11, v11

    const/high16 v12, 0x41e00000    # 28.0f

    mul-float v12, v12, p4

    float-to-int v12, v12

    invoke-virtual {v4, v1, v5, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v1, v4, v5, v11}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, v2, Lcom/admob/android/ads/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v11, v11, p4

    float-to-int v11, v11

    invoke-virtual {v3, v1, v4, v5, v11}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v1, Lcom/admob/android/ads/ac$e;

    iget-object v4, p0, Lcom/admob/android/ads/aa;->f:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p5

    invoke-direct {v1, v0, v2, v4}, Lcom/admob/android/ads/ac$e;-><init>(Lcom/admob/android/ads/ac;Lcom/admob/android/ads/o;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/admob/android/ads/x;

    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, p4

    float-to-int v4, v2

    const/high16 v2, 0x42480000    # 50.0f

    mul-float v2, v2, p4

    float-to-int v5, v2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/admob/android/ads/x;-><init>(Landroid/content/Context;Landroid/view/View;IILandroid/graphics/Bitmap;)V

    .line 158
    invoke-virtual {v7, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/high16 v3, 0x42080000    # 34.0f

    mul-float v3, v3, p4

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v7, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v10, 0x0

    aput v10, v5, v6

    const/4 v6, 0x1

    const/4 v10, 0x0

    aput v10, v5, v6

    const/4 v6, 0x2

    const/4 v10, 0x0

    aput v10, v5, v6

    const/4 v6, 0x3

    const/high16 v10, 0x42080000    # 34.0f

    mul-float v10, v10, p4

    aput v10, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 162
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 165
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    iget-object v2, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_4
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    .line 170
    iget-object v1, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    new-instance v2, Lcom/admob/android/ads/ac$i;

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-direct {v2, v0, v3}, Lcom/admob/android/ads/ac$i;-><init>(Lcom/admob/android/ads/ac;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    const v2, 0x1080005

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    iget-object v1, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 175
    iget-object v1, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42580000    # 54.0f

    mul-float v2, v2, p4

    float-to-int v2, v2

    const/high16 v3, 0x42100000    # 36.0f

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    iget-object v2, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/admob/android/ads/aa;->e:Landroid/widget/Button;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v3, v3, p4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    iget-object v2, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v1}, Lcom/admob/android/ads/ac;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v1, Lcom/admob/android/ads/ac$d;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Lcom/admob/android/ads/ac$d;-><init>(Lcom/admob/android/ads/ac;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/ac;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 245
    iget-object v0, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 246
    iget-object v0, p0, Lcom/admob/android/ads/aa;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->a(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/admob/android/ads/aa;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/admob/android/ads/ac;->a(Landroid/view/View;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/aa;->b:Z

    .line 249
    return-void
.end method
