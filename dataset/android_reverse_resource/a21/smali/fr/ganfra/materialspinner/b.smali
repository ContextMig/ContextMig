.class Lfr/ganfra/materialspinner/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lfr/ganfra/materialspinner/MaterialSpinner;

.field private b:Landroid/widget/SpinnerAdapter;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lfr/ganfra/materialspinner/MaterialSpinner;Landroid/widget/SpinnerAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    iput-object p3, p0, Lfr/ganfra/materialspinner/b;->c:Landroid/content/Context;

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lfr/ganfra/materialspinner/b;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p3, p4}, Lfr/ganfra/materialspinner/b;->a(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    if-eqz p4, :cond_4

    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x1090009

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-virtual {v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->h(Lfr/ganfra/materialspinner/MaterialSpinner;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const v0, 0x1090008

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->i(Lfr/ganfra/materialspinner/MaterialSpinner;)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lfr/ganfra/materialspinner/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lfr/ganfra/materialspinner/b;->a:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-ne p1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfr/ganfra/materialspinner/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/b;->b:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method
