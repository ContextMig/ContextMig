.class Lcom/wdullaer/materialdatetimepicker/date/t;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/date/r;


# direct methods
.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/r;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/t;->a:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/t;->a:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/date/r;->a(Lcom/wdullaer/materialdatetimepicker/date/r;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->setAccentColor(I)V

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/date/r;->a(Landroid/widget/TextView;)I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/t;->a:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/date/r;->b(Lcom/wdullaer/materialdatetimepicker/date/r;)Lcom/wdullaer/materialdatetimepicker/date/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->a()Lcom/wdullaer/materialdatetimepicker/date/k;

    move-result-object v2

    iget v2, v2, Lcom/wdullaer/materialdatetimepicker/date/k;->a:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/t;->a:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/r;->a(Lcom/wdullaer/materialdatetimepicker/date/r;Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;)Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
