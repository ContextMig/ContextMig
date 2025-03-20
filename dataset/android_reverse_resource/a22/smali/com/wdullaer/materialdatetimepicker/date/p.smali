.class Lcom/wdullaer/materialdatetimepicker/date/p;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/date/o;


# direct methods
.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/o;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/p;->a:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/p;->a:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/date/o;->a(Lcom/wdullaer/materialdatetimepicker/date/o;)Lcom/wdullaer/materialdatetimepicker/date/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/wdullaer/materialdatetimepicker/date/a;->c()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/p;->a:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/date/o;->a(Lcom/wdullaer/materialdatetimepicker/date/o;)Lcom/wdullaer/materialdatetimepicker/date/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->a(IZ)V

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/date/o;->a(Landroid/widget/TextView;)I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/p;->a:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/date/o;->a(Lcom/wdullaer/materialdatetimepicker/date/o;)Lcom/wdullaer/materialdatetimepicker/date/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->a()Lcom/wdullaer/materialdatetimepicker/date/h;

    move-result-object v2

    iget v2, v2, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/p;->a:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/o;->a(Lcom/wdullaer/materialdatetimepicker/date/o;Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;)Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
