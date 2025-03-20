.class public Lcom/batch/android/e/d/b/a$a;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/d/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/batch/android/e/d/b/b$a;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 117
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/batch/android/e/d/b/a$a;->gravity:I

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e/d/b/a$a;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/batch/android/e/d/b/a$a;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 122
    iget-object v0, p1, Lcom/batch/android/e/d/b/a$a;->a:Lcom/batch/android/e/d/b/b$a;

    iput-object v0, p0, Lcom/batch/android/e/d/b/a$a;->a:Lcom/batch/android/e/d/b/b$a;

    .line 123
    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/e/d/b/b$a;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/batch/android/e/d/b/a$a;->a:Lcom/batch/android/e/d/b/b$a;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/batch/android/e/d/b/b$a;

    invoke-direct {v0}, Lcom/batch/android/e/d/b/b$a;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/b/a$a;->a:Lcom/batch/android/e/d/b/b$a;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/batch/android/e/d/b/a$a;->a:Lcom/batch/android/e/d/b/b$a;

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 136
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/e/d/b/b;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    .line 137
    return-void
.end method
