.class Landroid/support/v7/internal/widget/am;
.super Landroid/support/v7/internal/widget/ad;


# instance fields
.field private final a:Landroid/support/v7/internal/widget/ao;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Landroid/support/v7/internal/widget/am;->a:Landroid/support/v7/internal/widget/ao;

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ad;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/am;->a:Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/internal/widget/ao;->a(ILandroid/graphics/drawable/Drawable;)Z

    :cond_0
    return-object v0
.end method
