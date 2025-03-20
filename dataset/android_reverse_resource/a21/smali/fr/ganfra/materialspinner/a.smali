.class Lfr/ganfra/materialspinner/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final synthetic b:Lfr/ganfra/materialspinner/MaterialSpinner;


# direct methods
.method constructor <init>(Lfr/ganfra/materialspinner/MaterialSpinner;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    iput-object p2, p0, Lfr/ganfra/materialspinner/a;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->b(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->c(Lfr/ganfra/materialspinner/MaterialSpinner;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->d(Lfr/ganfra/materialspinner/MaterialSpinner;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->f(Lfr/ganfra/materialspinner/MaterialSpinner;)I

    move-result v0

    if-eq p3, v0, :cond_2

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->g(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/ganfra/materialspinner/MaterialSpinner;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0, p3}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;I)I

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->a(Lfr/ganfra/materialspinner/MaterialSpinner;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    add-int/lit8 v3, p3, -0x1

    :goto_1
    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->c(Lfr/ganfra/materialspinner/MaterialSpinner;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->b:Lfr/ganfra/materialspinner/MaterialSpinner;

    invoke-static {v0}, Lfr/ganfra/materialspinner/MaterialSpinner;->e(Lfr/ganfra/materialspinner/MaterialSpinner;)V

    goto :goto_0

    :cond_5
    move v3, p3

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/ganfra/materialspinner/a;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method
