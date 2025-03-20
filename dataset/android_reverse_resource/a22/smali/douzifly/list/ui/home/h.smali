.class public final Ldouzifly/list/ui/home/h;
.super Landroid/support/v7/widget/RecyclerView$Adapter;

# interfaces
.implements La/a/a/a/a/a;


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;

.field private b:Ljava/util/List;

.field private final c:La/a/a/a/a/c;


# direct methods
.method public constructor <init>(Ldouzifly/list/ui/home/MainActivity;La/a/a/a/a/c;)V
    .locals 1

    const-string v0, "dragListener"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/ui/home/h;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Ldouzifly/list/ui/home/h;->c:La/a/a/a/a/c;

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/a/c;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/h;->c:La/a/a/a/a/c;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldouzifly/list/ui/home/i;
    .locals 4

    iget-object v0, p0, Ldouzifly/list/ui/home/h;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldouzifly/list/ui/home/i;

    iget-object v2, p0, Ldouzifly/list/ui/home/h;->a:Ldouzifly/list/ui/home/MainActivity;

    const-string v3, "view"

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Ldouzifly/list/ui/home/i;-><init>(Ldouzifly/list/ui/home/MainActivity;Landroid/view/View;)V

    return-object v1
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ldouzifly/list/ui/home/i;I)V
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_4

    invoke-virtual {p0}, Ldouzifly/list/ui/home/h;->getItemCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    iget-object v1, p0, Ldouzifly/list/ui/home/h;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    add-int/lit8 v0, p2, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Ldouzifly/list/ui/home/h;->b:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {p1, v0, v1}, Ldouzifly/list/ui/home/i;->a(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)V

    sget-object v0, Lb/g;->a:Lb/g;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p1, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    if-eqz v1, :cond_3

    new-instance v0, Ldouzifly/list/ui/home/h$a;

    invoke-direct {v0, p0, p1}, Ldouzifly/list/ui/home/h$a;-><init>(Ldouzifly/list/ui/home/h;Ldouzifly/list/ui/home/i;)V

    check-cast v0, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lb/g;->a:Lb/g;

    :cond_3
    return-void

    :cond_4
    check-cast v0, Ldouzifly/list/b/b;

    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/h;->b:Ljava/util/List;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/h;->notifyDataSetChanged()V

    return-void
.end method

.method public a(II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    sget-object v1, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v1}, Ldouzifly/list/b/d;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v3, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v3}, Ldouzifly/list/d/a;->m()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v1, v2, p1, p2}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/c;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Ldouzifly/list/ui/home/h;->notifyItemMoved(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/h;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Ldouzifly/list/ui/home/i;

    invoke-virtual {p0, p1, p2}, Ldouzifly/list/ui/home/h;->a(Ldouzifly/list/ui/home/i;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ldouzifly/list/ui/home/h;->a(Landroid/view/ViewGroup;I)Ldouzifly/list/ui/home/i;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object v0
.end method
