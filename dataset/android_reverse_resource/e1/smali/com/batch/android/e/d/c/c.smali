.class public Lcom/batch/android/e/d/c/c;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/d/d/d;


# static fields
.field public static final a:Ljava/lang/String; = "RoundedImageView"

.field public static final b:F = 0.0f

.field public static final c:F = 0.0f

.field public static final d:Landroid/graphics/Shader$TileMode;

.field static final synthetic e:Z

.field private static final f:I = -0x2

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private A:F

.field private B:F

.field private final C:[Z

.field private final k:[F

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/content/res/ColorStateList;

.field private n:F

.field private o:Landroid/graphics/ColorFilter;

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Landroid/widget/ImageView$ScaleType;

.field private x:Landroid/graphics/Shader$TileMode;

.field private y:Landroid/graphics/Shader$TileMode;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Lcom/batch/android/e/d/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/batch/android/e/d/c/c;->e:Z

    .line 64
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/batch/android/e/d/c/c;->d:Landroid/graphics/Shader$TileMode;

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batch/android/e/d/c/c;->j:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    .line 80
    const/high16 v0, -0x1000000

    .line 81
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    .line 82
    iput v2, p0, Lcom/batch/android/e/d/c/c;->n:F

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->o:Landroid/graphics/ColorFilter;

    .line 84
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->p:Z

    .line 86
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->r:Z

    .line 87
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->s:Z

    .line 88
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->t:Z

    .line 91
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->w:Landroid/widget/ImageView$ScaleType;

    .line 92
    sget-object v0, Lcom/batch/android/e/d/c/c;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->x:Landroid/graphics/Shader$TileMode;

    .line 93
    sget-object v0, Lcom/batch/android/e/d/c/c;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->y:Landroid/graphics/Shader$TileMode;

    .line 95
    iput v2, p0, Lcom/batch/android/e/d/c/c;->z:F

    .line 96
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/batch/android/e/d/c/c;->A:F

    .line 99
    iput v2, p0, Lcom/batch/android/e/d/c/c;->B:F

    .line 101
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    .line 105
    return-void

    .line 76
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 101
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/batch/android/e/d/c/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    .line 80
    const/high16 v0, -0x1000000

    .line 81
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    .line 82
    iput v2, p0, Lcom/batch/android/e/d/c/c;->n:F

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->o:Landroid/graphics/ColorFilter;

    .line 84
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->p:Z

    .line 86
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->r:Z

    .line 87
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->s:Z

    .line 88
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->t:Z

    .line 91
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->w:Landroid/widget/ImageView$ScaleType;

    .line 92
    sget-object v0, Lcom/batch/android/e/d/c/c;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->x:Landroid/graphics/Shader$TileMode;

    .line 93
    sget-object v0, Lcom/batch/android/e/d/c/c;->d:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->y:Landroid/graphics/Shader$TileMode;

    .line 95
    iput v2, p0, Lcom/batch/android/e/d/c/c;->z:F

    .line 96
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/batch/android/e/d/c/c;->A:F

    .line 99
    iput v2, p0, Lcom/batch/android/e/d/c/c;->B:F

    .line 101
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    .line 113
    return-void

    .line 76
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 101
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 299
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    instance-of v0, p1, Lcom/batch/android/e/d/c/b;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 302
    check-cast v0, Lcom/batch/android/e/d/c/b;

    .line 303
    invoke-virtual {v0, p2}, Lcom/batch/android/e/d/c/b;->a(Landroid/widget/ImageView$ScaleType;)Lcom/batch/android/e/d/c/b;

    move-result-object v0

    iget v2, p0, Lcom/batch/android/e/d/c/c;->n:F

    .line 304
    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/b;->b(F)Lcom/batch/android/e/d/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    .line 305
    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/b;->a(Landroid/content/res/ColorStateList;)Lcom/batch/android/e/d/c/b;

    move-result-object v0

    iget-boolean v2, p0, Lcom/batch/android/e/d/c/c;->s:Z

    .line 306
    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/b;->a(Z)Lcom/batch/android/e/d/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/e/d/c/c;->x:Landroid/graphics/Shader$TileMode;

    .line 307
    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/b;->a(Landroid/graphics/Shader$TileMode;)Lcom/batch/android/e/d/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/e/d/c/c;->y:Landroid/graphics/Shader$TileMode;

    .line 308
    invoke-virtual {v0, v2}, Lcom/batch/android/e/d/c/b;->b(Landroid/graphics/Shader$TileMode;)Lcom/batch/android/e/d/c/b;

    .line 310
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    if-eqz v0, :cond_2

    .line 311
    check-cast p1, Lcom/batch/android/e/d/c/b;

    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/batch/android/e/d/c/c;->k:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/batch/android/e/d/c/c;->k:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/batch/android/e/d/c/c;->k:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/batch/android/e/d/c/b;->a(FFFF)Lcom/batch/android/e/d/c/b;

    .line 318
    :cond_2
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->f()V

    goto :goto_0

    .line 319
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 321
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 322
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    .line 323
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/batch/android/e/d/c/c;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static b(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 124
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 120
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 122
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/batch/android/e/d/c/c;->t:Z

    if-eqz v0, :cond_1

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/batch/android/e/d/c/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/batch/android/e/d/c/c;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 271
    :cond_1
    return-void
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 219
    :goto_0
    return-object v0

    .line 210
    :cond_0
    iget v2, p0, Lcom/batch/android/e/d/c/c;->u:I

    if-eqz v2, :cond_1

    .line 212
    :try_start_0
    iget v2, p0, Lcom/batch/android/e/d/c/c;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/batch/android/e/d/c/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    const-string v2, "RoundedImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/batch/android/e/d/c/c;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/batch/android/e/d/c/c;->u:I

    goto :goto_1
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    if-nez v1, :cond_0

    .line 257
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget v2, p0, Lcom/batch/android/e/d/c/c;->v:I

    if-eqz v2, :cond_1

    .line 250
    :try_start_0
    iget v2, p0, Lcom/batch/android/e/d/c/c;->v:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/batch/android/e/d/c/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    const-string v2, "RoundedImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/batch/android/e/d/c/c;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lcom/batch/android/e/d/c/c;->v:I

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/batch/android/e/d/c/c;->w:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/batch/android/e/d/c/c;->a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 262
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/batch/android/e/d/c/c;->p:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-boolean v0, p0, Lcom/batch/android/e/d/c/c;->r:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/batch/android/e/d/c/c;->o:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 296
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, p1

    return v0
.end method

.method public a(FFFF)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aput p1, v0, v1

    .line 433
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aput p2, v0, v2

    .line 434
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aput p3, v0, v4

    .line 435
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aput p4, v0, v3

    .line 437
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 438
    invoke-direct {p0, v1}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->k:[F

    aput p2, v0, p1

    .line 410
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/batch/android/e/d/c/c;->a(IF)V

    .line 383
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 538
    if-nez p1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    .line 546
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    const-string v5, "border-radius"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 550
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setCornerRadius(F)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 553
    :cond_3
    const-string v5, "opacity"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setAlpha(F)V

    goto :goto_1

    .line 561
    :cond_4
    const-string v5, "elevation"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 563
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_1

    .line 565
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setElevation(F)V

    goto :goto_1

    .line 572
    :cond_5
    const-string v5, "blur"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 574
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/batch/android/e/d/c/c;->z:F

    .line 578
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 579
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 581
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 583
    :cond_6
    instance-of v1, v0, Lcom/batch/android/e/d/c/b;

    if-eqz v1, :cond_1

    .line 585
    check-cast v0, Lcom/batch/android/e/d/c/b;

    invoke-virtual {v0}, Lcom/batch/android/e/d/c/b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 589
    :cond_7
    const-string v5, "blur-scale"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/batch/android/e/d/c/c;->A:F

    .line 595
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 596
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_8

    .line 598
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 600
    :cond_8
    instance-of v1, v0, Lcom/batch/android/e/d/c/b;

    if-eqz v1, :cond_1

    .line 602
    check-cast v0, Lcom/batch/android/e/d/c/b;

    invoke-virtual {v0}, Lcom/batch/android/e/d/c/b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 606
    :cond_9
    const-string v5, "scale"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 608
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 609
    const-string v1, "fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 611
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    .line 613
    :cond_a
    const-string v1, "fit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1

    .line 618
    :cond_b
    const-string v5, "rounded-corners"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 620
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 621
    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 623
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v7

    .line 624
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v6

    .line 625
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v9

    .line 626
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v8

    .line 658
    :cond_c
    :goto_3
    iget v0, p0, Lcom/batch/android/e/d/c/c;->B:F

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setCornerRadius(F)V

    goto/16 :goto_1

    .line 628
    :cond_d
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 630
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v7

    .line 631
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v6

    .line 632
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v9

    .line 633
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v8

    goto :goto_3

    .line 635
    :cond_e
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 637
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v7

    .line 638
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v6

    .line 639
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v9

    .line 640
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v8

    goto :goto_3

    .line 642
    :cond_f
    const-string v1, "top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 644
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v7

    .line 645
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v6

    .line 646
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v9

    .line 647
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v8

    goto :goto_3

    .line 649
    :cond_10
    const-string v1, "bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 651
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v7

    .line 652
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v7, v0, v6

    .line 653
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v9

    .line 654
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    aput-boolean v6, v0, v8

    goto :goto_3

    .line 662
    :cond_11
    const-string v5, "padding-left"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 664
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v7

    goto/16 :goto_1

    .line 666
    :cond_12
    const-string v5, "padding-top"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 668
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v6

    goto/16 :goto_1

    .line 670
    :cond_13
    const-string v5, "padding-right"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 672
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v8

    goto/16 :goto_1

    .line 674
    :cond_14
    const-string v5, "padding-bottom"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/batch/android/e/d/a/b;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    goto/16 :goto_1

    .line 680
    :cond_15
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 681
    aget-object v1, v3, v7

    invoke-static {v0, v1}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v1

    aget-object v2, v3, v6

    invoke-static {v0, v2}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v2

    aget-object v4, v3, v8

    invoke-static {v0, v4}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v4

    aget-object v3, v3, v9

    invoke-static {v0, v3}, Lcom/batch/android/e/d/a/b;->a(Landroid/content/res/Resources;Ljava/lang/Float;)I

    move-result v0

    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/batch/android/e/d/c/c;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/batch/android/e/d/c/c;->t:Z

    if-ne v0, p1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 528
    :cond_0
    iput-boolean p1, p0, Lcom/batch/android/e/d/c/c;->t:Z

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 530
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/batch/android/e/d/c/c;->s:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/batch/android/e/d/c/c;->t:Z

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 131
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    .line 132
    return-void
.end method

.method public getBorderColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/batch/android/e/d/c/c;->n:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 349
    iget-object v2, p0, Lcom/batch/android/e/d/c/c;->k:[F

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 350
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return v1
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->w:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->x:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->y:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/batch/android/e/d/c/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    iput-object p1, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 334
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 229
    iget v0, p0, Lcom/batch/android/e/d/c/c;->v:I

    if-eq v0, p1, :cond_0

    .line 230
    iput p1, p0, Lcom/batch/android/e/d/c/c;->v:I

    .line 231
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 465
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 466
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    if-eqz p1, :cond_2

    .line 476
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    iput-object p1, p0, Lcom/batch/android/e/d/c/c;->m:Landroid/content/res/ColorStateList;

    .line 477
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 479
    iget v0, p0, Lcom/batch/android/e/d/c/c;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0

    .line 475
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_2
    const/high16 v0, -0x1000000

    .line 476
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 451
    iget v0, p0, Lcom/batch/android/e/d/c/c;->n:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 453
    :cond_0
    iput p1, p0, Lcom/batch/android/e/d/c/c;->n:F

    .line 454
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setBorderWidth(F)V

    .line 448
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->o:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/batch/android/e/d/c/c;->o:Landroid/graphics/ColorFilter;

    .line 276
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->r:Z

    .line 277
    iput-boolean v1, p0, Lcom/batch/android/e/d/c/c;->p:Z

    .line 278
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->f()V

    .line 279
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    .line 281
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 6
    .param p1, "radius"    # F

    .prologue
    const/4 v1, 0x0

    .line 391
    iput p1, p0, Lcom/batch/android/e/d/c/c;->B:F

    .line 392
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    move v0, p1

    :goto_0
    iget-object v2, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    move v2, p1

    :goto_1
    iget-object v3, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v3, p1

    :goto_2
    iget-object v4, p0, Lcom/batch/android/e/d/c/c;->C:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    .end local p1    # "radius":F
    :goto_3
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/batch/android/e/d/c/c;->a(FFFF)V

    .line 396
    return-void

    .restart local p1    # "radius":F
    :cond_0
    move v0, v1

    .line 392
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    move p1, v1

    goto :goto_3
.end method

.method public setCornerRadiusDimen(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 372
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/batch/android/e/d/c/c;->a(FFFF)V

    .line 373
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/d/c/c;->u:I

    .line 179
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/batch/android/e/d/c/c;->z:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/e/d/c/c;->z:F

    iget v2, p0, Lcom/batch/android/e/d/c/c;->A:F

    invoke-static {v0, p1, v1, v2}, Lcom/batch/android/e/d/a/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 184
    :cond_0
    invoke-static {p1}, Lcom/batch/android/e/d/c/b;->a(Landroid/graphics/Bitmap;)Lcom/batch/android/e/d/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 186
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/d/c/c;->u:I

    .line 170
    invoke-static {p1}, Lcom/batch/android/e/d/c/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 172
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 191
    iget v0, p0, Lcom/batch/android/e/d/c/c;->u:I

    if-eq v0, p1, :cond_0

    .line 192
    iput p1, p0, Lcom/batch/android/e/d/c/c;->u:I

    .line 193
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 195
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->q:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 201
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    return-void
.end method

.method public setOval(Z)V
    .locals 1
    .param p1, "oval"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/batch/android/e/d/c/c;->s:Z

    .line 490
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    .line 493
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 141
    sget-boolean v0, Lcom/batch/android/e/d/c/c;->e:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->w:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 144
    iput-object p1, p0, Lcom/batch/android/e/d/c/c;->w:Landroid/widget/ImageView$ScaleType;

    .line 146
    sget-object v0, Lcom/batch/android/e/d/c/c$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    :goto_0
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    .line 165
    :cond_1
    return-void

    .line 154
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeX"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->x:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 502
    :cond_0
    iput-object p1, p0, Lcom/batch/android/e/d/c/c;->x:Landroid/graphics/Shader$TileMode;

    .line 503
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 505
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/batch/android/e/d/c/c;->y:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 519
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/batch/android/e/d/c/c;->y:Landroid/graphics/Shader$TileMode;

    .line 516
    invoke-direct {p0}, Lcom/batch/android/e/d/c/c;->e()V

    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batch/android/e/d/c/c;->b(Z)V

    .line 518
    invoke-virtual {p0}, Lcom/batch/android/e/d/c/c;->invalidate()V

    goto :goto_0
.end method
