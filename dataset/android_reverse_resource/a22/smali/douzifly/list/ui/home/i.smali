.class public final Ldouzifly/list/ui/home/i;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;

# interfaces
.implements La/a/a/a/a/b;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final synthetic m:[Lb/f/e;


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;

.field private final b:Lb/b;

.field private c:Ldouzifly/list/b/b;

.field private final d:Lb/b;

.field private final e:Lb/b;

.field private final f:Lb/b;

.field private final g:Lb/b;

.field private final h:Lb/b;

.field private final i:Lb/b;

.field private final j:Lb/b;

.field private final k:Lb/b;

.field private final l:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xa

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "cardBackgroundColor"

    const-string v5, "getCardBackgroundColor()I"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "dotView"

    const-string v5, "getDotView()Ldouzifly/list/widget/DotView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtThing"

    const-string v5, "getTxtThing()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtReminder"

    const-string v5, "getTxtReminder()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtDone"

    const-string v5, "getTxtDone()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtDelete"

    const-string v5, "getTxtDelete()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "swipeLayout"

    const-string v5, "getSwipeLayout()Lcom/daimajia/swipe/SwipeLayout;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "thumbUp"

    const-string v5, "getThumbUp()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/16 v2, 0x8

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtTimeDiff"

    const-string v5, "getTxtTimeDiff()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/16 v2, 0x9

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/i;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtGroup"

    const-string v5, "getTxtGroup()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Ldouzifly/list/ui/home/MainActivity;Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ldouzifly/list/ui/home/i$a;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/i$a;-><init>(Ldouzifly/list/ui/home/i;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->b:Lb/b;

    const v0, 0x7f0d00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ldouzifly/list/ui/home/i$b;

    invoke-direct {v0, p0, p2}, Ldouzifly/list/ui/home/i$b;-><init>(Ldouzifly/list/ui/home/i;Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->d:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$m;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/i$m;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->e:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$l;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/i$l;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->f:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$j;

    invoke-direct {v0, p0, p2}, Ldouzifly/list/ui/home/i$j;-><init>(Ldouzifly/list/ui/home/i;Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->g:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$i;

    invoke-direct {v0, p0, p2}, Ldouzifly/list/ui/home/i$i;-><init>(Ldouzifly/list/ui/home/i;Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->h:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$g;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/i$g;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->i:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$h;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/i$h;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->j:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$n;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/i$n;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->k:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/i$k;

    invoke-direct {v0, p2}, Ldouzifly/list/ui/home/i$k;-><init>(Landroid/view/View;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/i;->l:Lb/b;

    return-void
.end method


# virtual methods
.method public final a(Ldouzifly/list/b/b;)I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v0}, Ldouzifly/list/b/b;->d()I

    move-result v2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ldouzifly/list/b/b;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-virtual {p1}, Ldouzifly/list/b/b;->g()I

    move-result v0

    :goto_2
    sget-object v2, Ldouzifly/list/widget/ColorPicker;->a:Ldouzifly/list/widget/a;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v1}, Ldouzifly/list/widget/a;->a(Ldouzifly/list/widget/a;IFILjava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->c:Ldouzifly/list/b/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ldouzifly/list/b/b;->c(I)V

    :cond_2
    return v2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    const v1, 0x3f828f5c    # 1.02f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final a(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)V
    .locals 1

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/ui/home/i;->c:Ldouzifly/list/b/b;

    invoke-virtual {p0, p1, p2}, Ldouzifly/list/ui/home/i;->b(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final b(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)V
    .locals 9

    const/16 v6, 0x10

    const/16 v1, 0x8

    const/4 v5, 0x1

    const v8, 0x7f0c002f

    const/4 v2, 0x0

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lb/g/c;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->i()Ldouzifly/list/d/b;

    move-result-object v0

    sget-object v3, Ldouzifly/list/d/b;->b:Ldouzifly/list/d/b;

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->f()Ldouzifly/list/widget/DotView;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldouzifly/list/widget/DotView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->f()Ldouzifly/list/widget/DotView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ldouzifly/list/widget/c;->b:Ldouzifly/list/widget/c;

    :goto_1
    invoke-virtual {v3, v0}, Ldouzifly/list/widget/DotView;->setMode(Ldouzifly/list/widget/c;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->f()Ldouzifly/list/widget/DotView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Ldouzifly/list/widget/DotView;->setColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->n()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->m()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    if-nez v0, :cond_6

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.CardView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Ldouzifly/list/widget/c;->a:Ldouzifly/list/widget/c;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ldouzifly/list/b/b;->d()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_5

    :cond_6
    check-cast v0, Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_6
    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    iget-object v3, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ldouzifly/list/widget/d;->a(I)F

    move-result v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->n()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x6

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v4

    int-to-long v6, v2

    cmp-long v0, v4, v6

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v3}, Ldouzifly/list/f/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->i()Ldouzifly/list/d/b;

    move-result-object v0

    sget-object v4, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    invoke-static {v0, v4}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->i()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    const v4, 0x7f070037

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v4, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->i()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const-string v0, "update txtDone"

    sget-object v3, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->m()Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ldouzifly/list/b/b;->e()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v4, v0}, Ldouzifly/list/f/b;->a(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->m()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->m()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v4}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v4

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->n()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->n()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_7
    invoke-virtual {v2}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    return-void

    :cond_8
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->f()Ldouzifly/list/widget/DotView;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/DotView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->n()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->m()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->itemView:Landroid/view/View;

    if-nez v0, :cond_a

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.CardView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    check-cast v0, Landroid/support/v7/widget/CardView;

    invoke-virtual {p0, p2}, Ldouzifly/list/ui/home/i;->a(Ldouzifly/list/b/b;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_6

    :cond_b
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v3}, Ldouzifly/list/f/b;->a(Landroid/widget/TextView;Ljava/util/Date;)V

    goto/16 :goto_7

    :cond_d
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    :cond_e
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    const v4, 0x7f070038

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v4, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_8

    :cond_10
    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c002e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_9

    :cond_11
    move v0, v2

    goto/16 :goto_a

    :cond_12
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->n()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->b:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v0

    const-string v3, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v0, v3, v5}, Lcom/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Lcom/a/a/i;->b(J)Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->a()V

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x258

    new-instance v6, Ldouzifly/list/ui/home/i$f;

    invoke-direct {v6, p0}, Ldouzifly/list/ui/home/i$f;-><init>(Ldouzifly/list/ui/home/i;)V

    check-cast v6, Lb/d/a/a;

    invoke-virtual/range {v0 .. v6}, Ldouzifly/list/ui/home/MainActivity;->a(IILandroid/view/View;ZILb/d/a/a;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->l()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/a/a/i;->b(J)Lcom/a/a/i;

    new-instance v0, Ldouzifly/list/ui/home/i$c;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/i$c;-><init>(Ldouzifly/list/ui/home/i;)V

    check-cast v0, Lcom/a/a/b;

    invoke-virtual {v1, v0}, Lcom/a/a/i;->a(Lcom/a/a/b;)V

    invoke-virtual {v1}, Lcom/a/a/i;->a()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final f()Ldouzifly/list/widget/DotView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->d:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/DotView;

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->e:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->f:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->g:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final j()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->h:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final k()Lcom/daimajia/swipe/SwipeLayout;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->i:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout;

    return-object v0
.end method

.method public final l()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->j:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final m()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->k:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final n()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->l:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/i;->m:[Lb/f/e;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-wide/16 v2, 0x1f4

    const/4 v6, 0x1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->f()Ldouzifly/list/widget/DotView;

    move-result-object v0

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    iget-object v1, p0, Ldouzifly/list/ui/home/i;->c:Ldouzifly/list/b/b;

    if-nez v1, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/MainActivity;->b(Ldouzifly/list/b/b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00cd

    if-ne v0, v1, :cond_8

    sget-object v0, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    sget-object v1, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    invoke-virtual {v1}, Ldouzifly/list/e/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/e/a;->a(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->k()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/h;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/h;->b:Lcom/daimajia/swipe/h;

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->k()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)V

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    const-class v1, Ldouzifly/list/ui/home/DetailActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_c

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Landroid/view/View;

    const-string v1, "tnDelete"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->g()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    check-cast v0, Landroid/view/View;

    const-string v3, "tnTitle"

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v6

    invoke-static {v0, v4}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/a;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_7

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_7
    invoke-virtual {v0}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    sget-object v3, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/g;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ldouzifly/list/ui/home/MainActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type douzifly.list.model.Thing"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->k()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)V

    new-instance v1, Ldouzifly/list/ui/home/i$d;

    invoke-direct {v1, p0, v0}, Ldouzifly/list/ui/home/i$d;-><init>(Ldouzifly/list/ui/home/i;Ldouzifly/list/b/b;)V

    move-object v0, v1

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type douzifly.list.model.Thing"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i;->k()Lcom/daimajia/swipe/SwipeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/daimajia/swipe/SwipeLayout;->a(Z)V

    new-instance v1, Ldouzifly/list/ui/home/i$e;

    invoke-direct {v1, p0, v0}, Ldouzifly/list/ui/home/i$e;-><init>(Ldouzifly/list/ui/home/i;Ldouzifly/list/b/b;)V

    move-object v0, v1

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method
