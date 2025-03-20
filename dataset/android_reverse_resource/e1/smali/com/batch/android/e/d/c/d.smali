.class public final Lcom/batch/android/e/d/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private b:[F

.field private c:Z

.field private d:F

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batch/android/e/d/c/d;->b:[F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/e/d/c/d;->c:Z

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e/d/c/d;->d:F

    .line 34
    const/high16 v0, -0x1000000

    .line 35
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/d;->e:Landroid/content/res/ColorStateList;

    .line 36
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/batch/android/e/d/c/d;->f:Landroid/widget/ImageView$ScaleType;

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/d;->a:Landroid/util/DisplayMetrics;

    .line 40
    return-void

    .line 30
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a(F)Lcom/batch/android/e/d/c/d;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/batch/android/e/d/c/d;->b:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 55
    iget-object v0, p0, Lcom/batch/android/e/d/c/d;->b:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 56
    iget-object v0, p0, Lcom/batch/android/e/d/c/d;->b:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 57
    iget-object v0, p0, Lcom/batch/android/e/d/c/d;->b:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 58
    return-object p0
.end method

.method public a(I)Lcom/batch/android/e/d/c/d;
    .locals 1

    .prologue
    .line 125
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e/d/c/d;->e:Landroid/content/res/ColorStateList;

    .line 126
    return-object p0
.end method

.method public a(IF)Lcom/batch/android/e/d/c/d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/batch/android/e/d/c/d;->b:[F

    aput p2, v0, p1

    .line 70
    return-object p0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/batch/android/e/d/c/d;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/batch/android/e/d/c/d;->e:Landroid/content/res/ColorStateList;

    .line 137
    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/batch/android/e/d/c/d;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/batch/android/e/d/c/d;->f:Landroid/widget/ImageView$ScaleType;

    .line 44
    return-object p0
.end method

.method public a(Z)Lcom/batch/android/e/d/c/d;
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/batch/android/e/d/c/d;->c:Z

    .line 148
    return-object p0
.end method

.method public b(F)Lcom/batch/android/e/d/c/d;
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/batch/android/e/d/c/d;->a:Landroid/util/DisplayMetrics;

    .line 81
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/batch/android/e/d/c/d;->a(F)Lcom/batch/android/e/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method public b(IF)Lcom/batch/android/e/d/c/d;
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/batch/android/e/d/c/d;->a:Landroid/util/DisplayMetrics;

    .line 93
    invoke-static {v0, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/batch/android/e/d/c/d;->a(IF)Lcom/batch/android/e/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method public c(F)Lcom/batch/android/e/d/c/d;
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/batch/android/e/d/c/d;->d:F

    .line 104
    return-object p0
.end method

.method public d(F)Lcom/batch/android/e/d/c/d;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/batch/android/e/d/c/d;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/batch/android/e/d/c/d;->d:F

    .line 115
    return-object p0
.end method
