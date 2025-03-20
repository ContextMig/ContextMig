.class public Landroid/support/v7/widget/ag;
.super Landroid/widget/SeekBar;


# instance fields
.field private a:Landroid/support/v7/widget/ah;

.field private b:Landroid/support/v7/internal/widget/ao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/b;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/support/v7/internal/widget/ao;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/internal/widget/ao;

    new-instance v0, Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ag;->b:Landroid/support/v7/internal/widget/ao;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ah;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/internal/widget/ao;)V

    iput-object v0, p0, Landroid/support/v7/widget/ag;->a:Landroid/support/v7/widget/ah;

    iget-object v0, p0, Landroid/support/v7/widget/ag;->a:Landroid/support/v7/widget/ah;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/ah;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
