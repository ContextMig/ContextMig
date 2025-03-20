.class Landroid/support/v7/widget/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ai;

.field final synthetic b:Landroid/support/v7/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/al;Landroid/support/v7/widget/ai;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/al;

    iput-object p2, p0, Landroid/support/v7/widget/am;->a:Landroid/support/v7/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/al;

    iget-object v0, v0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/ai;->setSelection(I)V

    iget-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/al;

    iget-object v0, v0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/al;

    iget-object v0, v0, Landroid/support/v7/widget/al;->a:Landroid/support/v7/widget/ai;

    iget-object v1, p0, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/al;

    invoke-static {v1}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/al;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/ai;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/am;->b:Landroid/support/v7/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->i()V

    return-void
.end method
