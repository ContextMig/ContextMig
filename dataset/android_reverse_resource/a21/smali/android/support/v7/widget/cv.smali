.class public Landroid/support/v7/widget/cv;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/do;)Landroid/support/v7/widget/cv;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/cv;->a(Landroid/support/v7/widget/do;I)Landroid/support/v7/widget/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/do;I)Landroid/support/v7/widget/cv;
    .locals 2

    iget-object v0, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/cv;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/cv;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/cv;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/cv;->d:I

    return-object p0
.end method
