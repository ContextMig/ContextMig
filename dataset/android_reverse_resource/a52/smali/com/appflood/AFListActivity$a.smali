.class final Lcom/appflood/AFListActivity$a;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/appflood/AFListActivity;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/appflood/AFListActivity$a;->setId(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/appflood/AFListActivity$a;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/appflood/AFListActivity$a;->setDividerHeight(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, v5, v2}, Lcom/appflood/AFListActivity$a;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, v5, v2}, Lcom/appflood/AFListActivity$a;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v4}, Lcom/appflood/AFListActivity$a;->setHeaderDividersEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/appflood/AFListActivity$a;->setFooterDividersEnabled(Z)V

    iget v0, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v1, p1, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/appflood/AFListActivity$a;->setPadding(IIII)V

    return-void
.end method
