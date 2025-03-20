.class public Lcom/batch/android/e/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "#22000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/batch/android/e/d/a/b;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a(I)I
    .locals 4

    .prologue
    .line 826
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 827
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 828
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 829
    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/Float;)I
    .locals 3

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 729
    const/4 v0, 0x0

    .line 731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static a(Lcom/batch/android/e/d/c;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 840
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/c;

    .line 844
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c;->c(I)V

    .line 845
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    sget v2, Lcom/batch/android/e/d/a/b;->a:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 866
    :goto_0
    return-object v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Lcom/batch/android/e/d/c;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e/d/c;

    .line 851
    invoke-virtual {v0, v4, v4}, Lcom/batch/android/e/d/c;->a(II)V

    .line 852
    sget v1, Lcom/batch/android/e/d/a/b;->a:I

    invoke-virtual {v0, v1}, Lcom/batch/android/e/d/c;->c(I)V

    .line 854
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v2, v4

    aput-object v0, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 856
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 857
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 859
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 861
    new-array v2, v5, [I

    const v3, 0x10102fe

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 863
    new-array v1, v4, [I

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/FrameLayout$LayoutParams;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 620
    if-eqz p1, :cond_1

    .line 623
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 624
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move-object v2, v0

    .line 630
    :goto_0
    const/4 v0, 0x5

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 633
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 637
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 639
    const-string v6, "margin-left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v10

    goto :goto_1

    .line 628
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 643
    :cond_2
    const-string v6, "margin-top"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v7

    goto :goto_1

    .line 647
    :cond_3
    const-string v6, "margin-right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 649
    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_1

    .line 651
    :cond_4
    const-string v6, "margin-bottom"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 653
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    goto :goto_1

    .line 656
    :cond_5
    const-string v6, "width"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v6, "size"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 658
    :cond_6
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 660
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 664
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    .line 667
    invoke-static {v4, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 672
    :cond_8
    const-string v6, "height"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 674
    const-string v1, "100%"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 676
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 678
    :cond_9
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 680
    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 684
    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    .line 687
    invoke-static {v4, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 692
    :cond_b
    const-string v6, "align"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const-string v1, "left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 696
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 698
    :cond_c
    const-string v1, "right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 700
    const/4 v0, 0x5

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 702
    :cond_d
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 704
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 707
    :cond_e
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 714
    :cond_f
    aget-object v0, v3, v10

    invoke-static {v4, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    aget-object v1, v3, v7

    invoke-static {v4, v1}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v5

    aget-object v3, v3, v9

    invoke-static {v4, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    invoke-virtual {v2, v0, v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 716
    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/batch/android/e/d/b$g;Ljava/util/Map;)Lcom/batch/android/e/d/b$g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/e/d/b$g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/batch/android/e/d/b$g;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v1, 0x0

    .line 346
    if-eqz p1, :cond_1

    .line 348
    new-instance v0, Lcom/batch/android/e/d/b$g;

    invoke-direct {v0, p1}, Lcom/batch/android/e/d/b$g;-><init>(Lcom/batch/android/e/d/b$g;)V

    move-object v2, v0

    .line 356
    :goto_0
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v10

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v0

    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 360
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 362
    const-string v6, "margin-left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v8

    goto :goto_1

    .line 352
    :cond_1
    new-instance v0, Lcom/batch/android/e/d/b$g;

    invoke-direct {v0, v7, v7}, Lcom/batch/android/e/d/b$g;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 366
    :cond_2
    const-string v6, "margin-top"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    goto :goto_1

    .line 370
    :cond_3
    const-string v6, "margin-right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v10

    goto :goto_1

    .line 374
    :cond_4
    const-string v6, "margin-bottom"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    const/4 v1, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_1

    .line 379
    :cond_5
    const-string v6, "width"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 381
    const-string v1, "100%"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 383
    const/4 v0, -0x1

    iput v0, v2, Lcom/batch/android/e/d/b$g;->width:I

    goto/16 :goto_1

    .line 385
    :cond_6
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    iput v7, v2, Lcom/batch/android/e/d/b$g;->width:I

    goto/16 :goto_1

    .line 391
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 394
    invoke-static {v4, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b$g;->width:I

    goto/16 :goto_1

    .line 399
    :cond_8
    const-string v6, "height"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 401
    const-string v1, "100%"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 403
    const/4 v0, -0x1

    iput v0, v2, Lcom/batch/android/e/d/b$g;->height:I

    goto/16 :goto_1

    .line 405
    :cond_9
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 407
    iput v7, v2, Lcom/batch/android/e/d/b$g;->height:I

    goto/16 :goto_1

    .line 411
    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 414
    invoke-static {v4, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b$g;->height:I

    goto/16 :goto_1

    .line 419
    :cond_b
    const-string v6, "align"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 421
    const-string v1, "left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 423
    iput v8, v2, Lcom/batch/android/e/d/b$g;->k:I

    goto/16 :goto_1

    .line 425
    :cond_c
    const-string v1, "right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 427
    iput v9, v2, Lcom/batch/android/e/d/b$g;->k:I

    goto/16 :goto_1

    .line 429
    :cond_d
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 431
    iput v10, v2, Lcom/batch/android/e/d/b$g;->k:I

    goto/16 :goto_1

    .line 434
    :cond_e
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, -0x1

    iput v0, v2, Lcom/batch/android/e/d/b$g;->k:I

    goto/16 :goto_1

    .line 440
    :cond_f
    const-string v6, "flex-grow"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 442
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b$g;->i:F

    goto/16 :goto_1

    .line 449
    :cond_10
    const-string v6, "flex-shrink"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b$g;->j:F

    goto/16 :goto_1

    .line 458
    :cond_11
    const-string v6, "flex-basis"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b$g;->l:F

    goto/16 :goto_1

    .line 467
    :cond_12
    const-string v6, "flex-order"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b$g;->h:I

    goto/16 :goto_1

    .line 477
    :cond_13
    aget-object v0, v3, v8

    invoke-static {v4, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    aget-object v1, v3, v9

    invoke-static {v4, v1}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    aget-object v5, v3, v10

    invoke-static {v4, v5}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v3, v3, v6

    invoke-static {v4, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    invoke-virtual {v2, v0, v1, v5, v3}, Lcom/batch/android/e/d/b$g;->setMargins(IIII)V

    .line 479
    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/batch/android/e/d/b/c$a;Ljava/util/Map;I)Lcom/batch/android/e/d/b/c$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/e/d/b/c$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/batch/android/e/d/b/c$a;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 492
    if-eqz p1, :cond_0

    .line 495
    new-instance v0, Lcom/batch/android/e/d/b/c$a;

    invoke-direct {v0, p1}, Lcom/batch/android/e/d/b/c$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v2, v0

    .line 504
    :goto_0
    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v11

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v6, v0

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 508
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v4

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 510
    const-string v9, "margin-left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v4

    move v0, v3

    :goto_2
    move v3, v0

    .line 597
    goto :goto_1

    .line 499
    :cond_0
    new-instance v0, Lcom/batch/android/e/d/b/c$a;

    invoke-direct {v0, v10, v10}, Lcom/batch/android/e/d/b/c$a;-><init>(II)V

    move-object v2, v0

    goto :goto_0

    .line 514
    :cond_1
    const-string v9, "margin-top"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v5

    move v0, v3

    goto :goto_2

    .line 518
    :cond_2
    const-string v9, "margin-right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v11

    move v0, v3

    goto :goto_2

    .line 522
    :cond_3
    const-string v9, "margin-bottom"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 524
    const/4 v1, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v1

    move v0, v3

    goto :goto_2

    .line 527
    :cond_4
    const-string v9, "width"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v9, "size"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 529
    :cond_5
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 531
    iput v10, v2, Lcom/batch/android/e/d/b/c$a;->width:I

    move v0, v3

    goto/16 :goto_2

    .line 535
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_7

    .line 538
    invoke-static {v7, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b/c$a;->width:I

    :cond_7
    move v0, v3

    .line 540
    goto/16 :goto_2

    .line 543
    :cond_8
    const-string v9, "height"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 545
    const-string v1, "100%"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 547
    iput v10, v2, Lcom/batch/android/e/d/b/c$a;->height:I

    move v0, v3

    goto/16 :goto_2

    .line 549
    :cond_9
    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 551
    const/4 v0, -0x2

    iput v0, v2, Lcom/batch/android/e/d/b/c$a;->height:I

    move v0, v3

    goto/16 :goto_2

    .line 555
    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_b

    .line 558
    invoke-static {v7, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    iput v0, v2, Lcom/batch/android/e/d/b/c$a;->height:I

    :cond_b
    move v0, v3

    .line 560
    goto/16 :goto_2

    .line 563
    :cond_c
    const-string v9, "align"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 565
    const-string v1, "left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 567
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    move v0, v5

    .line 568
    goto/16 :goto_2

    .line 570
    :cond_d
    const-string v1, "right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 572
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    move v0, v5

    .line 573
    goto/16 :goto_2

    .line 575
    :cond_e
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 577
    :cond_f
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    move v0, v5

    .line 578
    goto/16 :goto_2

    .line 582
    :cond_10
    const-string v9, "align-v"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 584
    const-string v1, "top"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 586
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    move v0, v3

    goto/16 :goto_2

    .line 588
    :cond_11
    const-string v1, "bottom"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 590
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    move v0, v3

    goto/16 :goto_2

    .line 592
    :cond_12
    const-string v1, "center"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "auto"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 594
    :cond_13
    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    :cond_14
    move v0, v3

    goto/16 :goto_2

    .line 599
    :cond_15
    if-nez v3, :cond_16

    .line 601
    invoke-virtual {v2, p3}, Lcom/batch/android/e/d/b/c$a;->addRule(I)V

    .line 604
    :cond_16
    aget-object v0, v6, v4

    invoke-static {v7, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    aget-object v1, v6, v5

    invoke-static {v7, v1}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    aget-object v3, v6, v11

    invoke-static {v7, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v7, v4}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/batch/android/e/d/b/c$a;->setMargins(IIII)V

    .line 606
    return-object v2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 757
    if-nez p0, :cond_0

    .line 770
    :goto_0
    return-object v0

    .line 764
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/Float;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    const/4 v2, 0x0

    .line 79
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    const-string v7, "background"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    const-string v7, "#"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 88
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/e/d/a/b;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    move-object v1, v6

    :goto_2
    move-object v14, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v14

    :goto_3
    move-object v5, v3

    move-object v6, v4

    move-object v4, v2

    move-object v3, v1

    move-object v2, v0

    .line 240
    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    .line 92
    const-string v7, "StyleHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unparsable background color ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    move-object v1, v6

    .line 93
    goto :goto_2

    .line 95
    :cond_3
    const-string v0, "linear-gradient("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 97
    const/16 v0, 0x10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 99
    array-length v0, v7

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 103
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const-string v1, "deg"

    const-string v10, ""

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 115
    sget-object v0, Lcom/batch/android/e/d/c$b;->e:Lcom/batch/android/e/d/c$b;

    move-object v1, v0

    .line 129
    :goto_4
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    new-array v10, v0, [I

    .line 131
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 133
    const/4 v0, 0x1

    :goto_5
    array-length v6, v7

    if-ge v0, v6, :cond_6

    .line 139
    aget-object v6, v7, v0

    const-string v12, "%"

    const-string v13, ""

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v12, "\\s+"

    const/4 v13, 0x2

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 140
    array-length v12, v6

    if-nez v12, :cond_5

    .line 133
    :cond_4
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    :sswitch_0
    sget-object v0, Lcom/batch/android/e/d/c$b;->g:Lcom/batch/android/e/d/c$b;

    move-object v1, v0

    .line 119
    goto :goto_4

    .line 121
    :sswitch_1
    sget-object v0, Lcom/batch/android/e/d/c$b;->a:Lcom/batch/android/e/d/c$b;

    move-object v1, v0

    .line 122
    goto :goto_4

    .line 125
    :sswitch_2
    sget-object v0, Lcom/batch/android/e/d/c$b;->c:Lcom/batch/android/e/d/c$b;

    move-object v1, v0

    goto :goto_4

    .line 145
    :cond_5
    add-int/lit8 v12, v0, -0x1

    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-static {v13}, Lcom/batch/android/e/d/a/b;->c(Ljava/lang/String;)I

    move-result v13

    aput v13, v10, v12

    .line 148
    array-length v12, v6

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 150
    const/4 v12, 0x1

    aget-object v6, v6, v12

    invoke-static {v6}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .line 151
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_4

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/high16 v13, 0x42c80000    # 100.0f

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_4

    .line 153
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 154
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 159
    :cond_6
    const/4 v0, 0x0

    .line 161
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v10

    if-ne v6, v7, :cond_8

    .line 163
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [F

    .line 164
    const/4 v0, 0x0

    move v6, v0

    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 166
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v7, v6

    .line 164
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7

    :cond_7
    move-object v0, v7

    .line 170
    :cond_8
    new-instance v6, Lcom/batch/android/e/d/c;

    invoke-direct {v6, v1, v10, v0}, Lcom/batch/android/e/d/c;-><init>(Lcom/batch/android/e/d/c$b;[I[F)V

    move-object v0, v5

    move-object v1, v6

    goto/16 :goto_2

    .line 173
    :cond_9
    const-string v7, "background-color"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 177
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/e/d/a/b;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v6

    .line 182
    goto/16 :goto_3

    .line 179
    :catch_1
    move-exception v1

    .line 181
    const-string v7, "StyleHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unparsable background-color ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    .line 182
    goto/16 :goto_3

    .line 184
    :cond_a
    const-string v7, "border-color"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 188
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/e/d/a/b;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v3

    move-object v4, v6

    move-object v3, v5

    move-object v14, v0

    move-object v0, v2

    move-object v2, v14

    .line 193
    goto/16 :goto_3

    .line 190
    :catch_2
    move-exception v1

    .line 192
    const-string v7, "StyleHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unparsable border-color ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v1}, Lcom/batch/android/c/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    .line 193
    goto/16 :goto_3

    .line 195
    :cond_b
    const-string v7, "border-width"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_3

    .line 199
    :cond_c
    const-string v7, "border-radius"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    move-object v1, v0

    move-object v3, v5

    move-object v0, v2

    move-object v2, v4

    move-object v4, v6

    goto/16 :goto_3

    .line 203
    :cond_d
    const-string v7, "opacity"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_e

    .line 208
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_e
    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    .line 210
    goto/16 :goto_3

    .line 211
    :cond_f
    const-string v7, "elevation"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v1, v7, :cond_15

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_10

    .line 218
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    :cond_10
    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    .line 220
    goto/16 :goto_3

    .line 224
    :cond_11
    const-string v7, "padding-left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 226
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_3

    .line 228
    :cond_12
    const-string v7, "padding-top"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 230
    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_3

    .line 232
    :cond_13
    const-string v7, "padding-right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 234
    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_3

    .line 236
    :cond_14
    const-string v7, "padding-bottom"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 238
    const/4 v1, 0x3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    :cond_15
    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_3

    .line 242
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    instance-of v0, p0, Landroid/view/TextureView;

    if-nez v0, :cond_1d

    .line 248
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    if-nez v6, :cond_18

    if-nez v4, :cond_18

    if-nez v3, :cond_18

    if-eqz v2, :cond_21

    .line 254
    :cond_18
    if-nez v6, :cond_23

    .line 256
    new-instance v0, Lcom/batch/android/e/d/c;

    invoke-direct {v0}, Lcom/batch/android/e/d/c;-><init>()V

    .line 260
    :goto_8
    if-eqz v5, :cond_19

    .line 262
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/batch/android/e/d/c;->c(I)V

    .line 266
    :cond_19
    if-eqz v2, :cond_1a

    .line 268
    if-eqz v5, :cond_1f

    .line 269
    :goto_9
    if-eqz v5, :cond_1a

    .line 271
    invoke-static {v1, v2}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/batch/android/e/d/c;->a(II)V

    .line 276
    :cond_1a
    if-eqz v3, :cond_1b

    .line 278
    invoke-static {v1, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c;->a(F)V

    .line 283
    :cond_1b
    instance-of v2, p0, Lcom/batch/android/e/d/d/a;

    if-eqz v2, :cond_1c

    .line 285
    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->a(Lcom/batch/android/e/d/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 288
    :cond_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_20

    .line 290
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_1d
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 325
    if-eqz v0, :cond_1e

    .line 327
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 330
    :cond_1e
    iget v0, v2, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-static {v1, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v3

    add-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    aget-object v4, v8, v4

    .line 331
    invoke-static {v1, v4}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x2

    aget-object v5, v8, v5

    .line 332
    invoke-static {v1, v5}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v5

    add-int/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x3

    aget-object v5, v8, v5

    .line 333
    invoke-static {v1, v5}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    add-int/2addr v1, v2

    .line 330
    invoke-virtual {p0, v0, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_1f
    move-object v5, v4

    .line 268
    goto :goto_9

    .line 295
    :cond_20
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 298
    :cond_21
    if-eqz v5, :cond_1d

    .line 302
    instance-of v0, p0, Landroid/support/v7/widget/AppCompatButton;

    if-eqz v0, :cond_22

    .line 304
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v6, 0x10100a7

    aput v6, v3, v4

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v6, 0x101009e

    aput v6, v3, v4

    aput-object v3, v0, v2

    .line 309
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 310
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/batch/android/e/d/a/b;->a(I)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 311
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 314
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_a

    .line 318
    :cond_22
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_a

    :cond_23
    move-object v0, v6

    goto/16 :goto_8

    :cond_24
    move-object v0, v5

    move-object v1, v6

    goto/16 :goto_2

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a -> :sswitch_2
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static b(Landroid/content/res/Resources;Ljava/lang/Float;)F
    .locals 2

    .prologue
    .line 742
    if-nez p1, :cond_0

    .line 744
    const/4 v0, 0x0

    .line 746
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 781
    if-nez p0, :cond_0

    .line 794
    :goto_0
    return-object v0

    .line 788
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 805
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transparent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v1

    goto :goto_0
.end method
