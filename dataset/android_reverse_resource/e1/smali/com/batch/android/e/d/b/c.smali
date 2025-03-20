.class public Lcom/batch/android/e/d/b/c;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/d/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/batch/android/e/d/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/batch/android/e/d/b/b;

    invoke-direct {v0, p0}, Lcom/batch/android/e/d/b/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/batch/android/e/d/b/c;->a:Lcom/batch/android/e/d/b/b;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Lcom/batch/android/e/d/b/b;

    invoke-direct {v0, p0}, Lcom/batch/android/e/d/b/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/batch/android/e/d/b/c;->a:Lcom/batch/android/e/d/b/b;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/batch/android/e/d/b/b;

    invoke-direct {v0, p0}, Lcom/batch/android/e/d/b/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/batch/android/e/d/b/c;->a:Lcom/batch/android/e/d/b/b;

    .line 78
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 91
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 92
    iget-object v0, p0, Lcom/batch/android/e/d/b/c;->a:Lcom/batch/android/e/d/b/b;

    invoke-virtual {v0}, Lcom/batch/android/e/d/b/b;->a()V

    .line 93
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/batch/android/e/d/b/c;->a:Lcom/batch/android/e/d/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/e/d/b/b;->a(II)V

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 84
    iget-object v0, p0, Lcom/batch/android/e/d/b/c;->a:Lcom/batch/android/e/d/b/b;

    invoke-virtual {v0}, Lcom/batch/android/e/d/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 87
    :cond_0
    return-void
.end method
