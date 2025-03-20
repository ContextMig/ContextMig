.class public final Ldouzifly/list/widget/ActionPanel;
.super Lio/codetail/widget/RevealFrameLayout;


# static fields
.field private static final synthetic l:[Lb/f/e;


# instance fields
.field private final b:Lb/b;

.field private final c:Lb/b;

.field private final d:Lb/b;

.field private final e:Lb/b;

.field private final f:Lb/b;

.field private g:Lb/d/a/b;

.field private h:Lb/d/a/b;

.field private i:Lb/d/a/a;

.field private j:Ldouzifly/list/b/b;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/ActionPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "actionDone"

    const-string v5, "getActionDone()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/ActionPanel;

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

    const-class v3, Ldouzifly/list/widget/ActionPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtTitle"

    const-string v5, "getTxtTitle()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/ActionPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtContent"

    const-string v5, "getTxtContent()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/ActionPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "revealView"

    const-string v5, "getRevealView()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/widget/ActionPanel;->l:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/codetail/widget/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ldouzifly/list/widget/ActionPanel$b;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$b;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/ActionPanel;->b:Lb/b;

    new-instance v0, Ldouzifly/list/widget/ActionPanel$a;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$a;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/ActionPanel;->c:Lb/b;

    new-instance v0, Ldouzifly/list/widget/ActionPanel$j;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$j;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/ActionPanel;->d:Lb/b;

    new-instance v0, Ldouzifly/list/widget/ActionPanel$i;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$i;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/ActionPanel;->e:Lb/b;

    new-instance v0, Ldouzifly/list/widget/ActionPanel$g;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$g;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/ActionPanel;->f:Lb/b;

    return-void
.end method

.method public static synthetic a(Ldouzifly/list/widget/ActionPanel;IILb/d/a/a;ILjava/lang/Object;)V
    .locals 2

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: hide"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Lb/d/a/a;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Ldouzifly/list/widget/ActionPanel;->a(IILb/d/a/a;)V

    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method private final setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Ldouzifly/list/widget/ActionPanel;->k:Z

    return-void
.end method


# virtual methods
.method public final a(IILandroid/view/View;ZLb/d/a/a;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "viewRoot"

    invoke-static {p3, v1}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    if-eqz p4, :cond_0

    move v2, v1

    :goto_0
    if-eqz p4, :cond_1

    :goto_1
    invoke-static {p3, p1, p2, v2, v0}, Lio/codetail/a/k;->a(Landroid/view/View;IIFF)Lio/codetail/a/g;

    move-result-object v1

    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Lio/codetail/a/g;->a(I)V

    new-instance v0, Ldouzifly/list/widget/ActionPanel$h;

    invoke-direct {v0, p5}, Ldouzifly/list/widget/ActionPanel$h;-><init>(Lb/d/a/a;)V

    check-cast v0, Lio/codetail/a/h;

    invoke-virtual {v1, v0}, Lio/codetail/a/g;->a(Lio/codetail/a/h;)V

    invoke-virtual {v1}, Lio/codetail/a/g;->a()V

    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(IILb/d/a/a;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldouzifly/list/widget/ActionPanel;->k:Z

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel;->getRevealView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Ldouzifly/list/widget/ActionPanel$c;

    invoke-direct {v5, p0, p3}, Ldouzifly/list/widget/ActionPanel$c;-><init>(Ldouzifly/list/widget/ActionPanel;Lb/d/a/a;)V

    check-cast v5, Lb/d/a/a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ldouzifly/list/widget/ActionPanel;->a(IILandroid/view/View;ZLb/d/a/a;)V

    return-void
.end method

.method public final getActionDelete()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->c:Lb/b;

    sget-object v1, Ldouzifly/list/widget/ActionPanel;->l:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final getActionDone()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->b:Lb/b;

    sget-object v1, Ldouzifly/list/widget/ActionPanel;->l:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final getOnDeleteListener()Lb/d/a/b;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->h:Lb/d/a/b;

    return-object v0
.end method

.method public final getOnDoneListener()Lb/d/a/b;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->g:Lb/d/a/b;

    return-object v0
.end method

.method public final getOnHide()Lb/d/a/a;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->i:Lb/d/a/a;

    return-object v0
.end method

.method public final getRevealView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->f:Lb/b;

    sget-object v1, Ldouzifly/list/widget/ActionPanel;->l:[Lb/f/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getThing()Ldouzifly/list/b/b;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->j:Ldouzifly/list/b/b;

    return-object v0
.end method

.method public final getTxtContent()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->e:Lb/b;

    sget-object v1, Ldouzifly/list/widget/ActionPanel;->l:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTxtTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/ActionPanel;->d:Lb/b;

    sget-object v1, Ldouzifly/list/widget/ActionPanel;->l:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lio/codetail/widget/RevealFrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel;->getTxtTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel;->getTxtContent()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Ldouzifly/list/widget/ActionPanel$d;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$d;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/ActionPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel;->getActionDelete()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/widget/ActionPanel$e;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$e;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/ActionPanel;->getActionDone()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/widget/ActionPanel$f;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/ActionPanel$f;-><init>(Ldouzifly/list/widget/ActionPanel;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnDeleteListener(Lb/d/a/b;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel;->h:Lb/d/a/b;

    return-void
.end method

.method public final setOnDoneListener(Lb/d/a/b;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel;->g:Lb/d/a/b;

    return-void
.end method

.method public final setOnHide(Lb/d/a/a;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel;->i:Lb/d/a/a;

    return-void
.end method

.method public final setThing(Ldouzifly/list/b/b;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ActionPanel;->j:Ldouzifly/list/b/b;

    return-void
.end method
