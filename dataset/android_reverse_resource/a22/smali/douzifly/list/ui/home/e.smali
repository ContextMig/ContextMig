.class public final Ldouzifly/list/ui/home/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/GroupEditorActivity;

.field private b:Z

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/e;->c:Ljava/util/List;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/e;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Ldouzifly/list/ui/home/e;->b:Z

    invoke-virtual {p0}, Ldouzifly/list/ui/home/e;->notifyDataSetChanged()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/ui/home/e;->b:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/e;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Ldouzifly/list/ui/home/e;->b:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/GroupEditorActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/ui/home/e;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const v10, 0x7f0c0080

    const v9, 0x7f0c003d

    const/4 v2, 0x1

    const v8, 0x7f0d0091

    const/4 v3, 0x0

    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    instance-of v0, p1, Ldouzifly/list/ui/home/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ldouzifly/list/ui/home/f;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/f;->c()Landroid/widget/TextView;

    move-result-object v1

    const v4, 0x7f070049

    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v4, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Ldouzifly/list/ui/home/f;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/f;->d()Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v0}, Ldouzifly/list/b/e;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v1}, Ldouzifly/list/b/d;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v4

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v1}, Ldouzifly/list/b/d;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    check-cast p1, Ldouzifly/list/ui/home/f;

    invoke-virtual {p1}, Ldouzifly/list/ui/home/f;->a()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v1

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v4

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/daimajia/swipe/SwipeLayout;->setSwipeEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p2, p2, -0x1

    :cond_4
    instance-of v0, p1, Ldouzifly/list/ui/home/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldouzifly/list/ui/home/e;->c:Ljava/util/List;

    if-nez v0, :cond_5

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    move-object v1, p1

    check-cast v1, Ldouzifly/list/ui/home/f;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/f;->c()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    check-cast v1, Ldouzifly/list/ui/home/f;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/f;->d()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Ldouzifly/list/b/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    check-cast v1, Ldouzifly/list/ui/home/f;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/f;->a()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->g()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_4
    invoke-virtual {v1, v2}, Lcom/daimajia/swipe/SwipeLayout;->setSwipeEnabled(Z)V

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_6
    :goto_5
    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->d()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Ldouzifly/list/ui/home/f;

    if-eqz v0, :cond_0

    check-cast p1, Ldouzifly/list/ui/home/f;

    invoke-virtual {p1}, Ldouzifly/list/ui/home/f;->a()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/daimajia/swipe/SwipeLayout;->setSwipeEnabled(Z)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/GroupEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    instance-of v0, p1, Ldouzifly/list/ui/home/d;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ldouzifly/list/ui/home/d;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/d;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    move-object v0, p1

    check-cast v0, Ldouzifly/list/ui/home/d;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/d;->a()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->a(Landroid/widget/EditText;)V

    const-wide/16 v4, 0x12c

    new-instance v0, Ldouzifly/list/ui/home/e$a;

    invoke-direct {v0, p1}, Ldouzifly/list/ui/home/e$a;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v4, v5, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    goto :goto_5
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p2, :cond_0

    new-instance v0, Ldouzifly/list/ui/home/f;

    iget-object v2, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    const v3, 0x7f04002c

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "lf.inflate(R.layout.home\u2026roup_item, parent, false)"

    invoke-static {v1, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ldouzifly/list/ui/home/f;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;Landroid/view/View;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldouzifly/list/ui/home/d;

    iget-object v2, p0, Ldouzifly/list/ui/home/e;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    const v3, 0x7f04002a

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "lf.inflate(R.layout.home\u2026p_ed_item, parent, false)"

    invoke-static {v1, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Ldouzifly/list/ui/home/d;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;Landroid/view/View;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method
