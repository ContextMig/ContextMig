.class public final Ldouzifly/list/ui/home/f;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic f:[Lb/f/e;


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/GroupEditorActivity;

.field private final b:Lb/b;

.field private final c:Lb/b;

.field private final d:Lb/b;

.field private final e:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/f;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "swipeLayout"

    const-string v5, "getSwipeLayout()Lcom/daimajia/swipe/SwipeLayout;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/f;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "actionDelete"

    const-string v5, "getActionDelete()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/f;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "mTxtTitle"

    const-string v5, "getMTxtTitle()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/f;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "mTxtCount"

    const-string v5, "getMTxtCount()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/ui/home/f;->f:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Ldouzifly/list/ui/home/GroupEditorActivity;Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/ui/home/f;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ldouzifly/list/ui/home/f$d;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/f$d;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/f;->b:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/f$a;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/f$a;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/f;->c:Lb/b;

    const v0, 0x7f0d0091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/f$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/f$1;-><init>(Ldouzifly/list/ui/home/f;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/f;->a()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/g;->b:Lcom/daimajia/swipe/g;

    invoke-virtual {v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->setShowMode(Lcom/daimajia/swipe/g;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/f;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/f;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->G:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c0070

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ldouzifly/list/ui/home/f$c;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/f$c;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/f;->d:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/f$b;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/f$b;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/f;->e:Lb/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/daimajia/swipe/SwipeLayout;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/f;->b:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/f;->f:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout;

    return-object v0
.end method

.method public final b()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/f;->c:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/f;->f:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/f;->d:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/f;->f:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/f;->e:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/f;->f:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Ldouzifly/list/ui/home/f;->itemView:Landroid/view/View;

    const v1, 0x7f0d0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v2, v0, v1}, Ldouzifly/list/b/e;->e(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldouzifly/list/ui/home/f;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldouzifly/list/ui/home/f;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f070021

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/f;->a()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->i()V

    goto :goto_0
.end method
