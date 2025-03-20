.class public final Ldouzifly/list/ui/home/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements La/a/a/a/a/c;


# static fields
.field public static final a:Ldouzifly/list/ui/home/g;

# The value of this static final field might be set in the static constructor
.field private static final k:Ljava/lang/String; = "MainActivity"

# The value of this static final field might be set in the static constructor
.field private static final l:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final m:I = 0x2

# The value of this static final field might be set in the static constructor
.field private static final n:I = 0x3

# The value of this static final field might be set in the static constructor
.field private static final o:I = 0x4

# The value of this static final field might be set in the static constructor
.field private static final p:I = 0x5

.field private static final synthetic q:[Lb/f/e;


# instance fields
.field private final b:Lb/b;

.field private final c:Lb/b;

.field private final d:Lb/b;

.field private final e:Lb/b;

.field private final f:Lb/b;

.field private final g:Lb/b;

.field private h:I

.field private final i:Lb/d/a/b;

.field private j:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v0, Ldouzifly/list/ui/home/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/ui/home/g;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    const-string v0, "MainActivity"

    sput-object v0, Ldouzifly/list/ui/home/MainActivity;->k:Ljava/lang/String;

    sput v6, Ldouzifly/list/ui/home/MainActivity;->l:I

    sput v7, Ldouzifly/list/ui/home/MainActivity;->m:I

    sput v8, Ldouzifly/list/ui/home/MainActivity;->n:I

    sput v9, Ldouzifly/list/ui/home/MainActivity;->o:I

    sput v10, Ldouzifly/list/ui/home/MainActivity;->p:I

    const/4 v0, 0x6

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "mRecyclerView"

    const-string v5, "getMRecyclerView()Landroid/support/v7/widget/RecyclerView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "mFabButton"

    const-string v4, "getMFabButton()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v6

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "mInputPanel"

    const-string v4, "getMInputPanel()Ldouzifly/list/widget/InputPanel;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v7

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "mTxtEmpty"

    const-string v4, "getMTxtEmpty()Landroid/view/View;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v8

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "mTitleLayout"

    const-string v4, "getMTitleLayout()Ldouzifly/list/widget/TitleLayout;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v9

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/MainActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "mFabSetting"

    const-string v4, "getMFabSetting()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v10

    sput-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$h;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$h;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->b:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$d;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$d;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->c:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$g;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$g;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->d:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$j;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$j;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->e:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$i;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$i;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->f:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$f;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$f;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->g:Lb/b;

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->l()I

    move-result v0

    iput v0, p0, Ldouzifly/list/ui/home/MainActivity;->h:I

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$e;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$e;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/b;

    iput-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->i:Lb/d/a/b;

    return-void
.end method

.method public static final synthetic a(Ldouzifly/list/ui/home/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldouzifly/list/ui/home/MainActivity;->p()V

    return-void
.end method

.method public static final synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic l()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/MainActivity;->l:I

    return v0
.end method

.method public static final synthetic m()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/MainActivity;->m:I

    return v0
.end method

.method public static final synthetic n()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/MainActivity;->n:I

    return v0
.end method

.method public static final synthetic o()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/MainActivity;->o:I

    return v0
.end method

.method private final p()V
    .locals 6

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    sget-object v1, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v1}, Ldouzifly/list/b/d;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->e()Ldouzifly/list/widget/TitleLayout;

    move-result-object v0

    const v1, 0x7f070022

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, p0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/TitleLayout;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-virtual {v0}, Ldouzifly/list/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->e()Ldouzifly/list/widget/TitleLayout;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Ldouzifly/list/ui/home/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.default_group_title)"

    invoke-static {v1, v2}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/TitleLayout;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->e()Ldouzifly/list/widget/TitleLayout;

    move-result-object v1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldouzifly/list/widget/TitleLayout;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->b:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final a(IILandroid/view/View;ZILb/d/a/a;)V
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

    invoke-virtual {v1, p5}, Lio/codetail/a/g;->a(I)V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$o;

    invoke-direct {v0, p6}, Ldouzifly/list/ui/home/MainActivity$o;-><init>(Lb/d/a/a;)V

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

.method public final a(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ldouzifly/list/c/a;->a:Ldouzifly/list/c/a;

    invoke-virtual {v0}, Ldouzifly/list/c/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle intent thingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    sget-object v1, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ldouzifly/list/b/e;->d(J)Ldouzifly/list/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle intent thing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    const-string v2, "thing.group!!.id"

    invoke-static {v0, v2}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldouzifly/list/d/a;->a(J)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->g()V

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->j:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    sget-object v0, Lb/g;->a:Lb/g;

    :cond_0
    return-void
.end method

.method public final a(Ldouzifly/list/b/b;)V
    .locals 2

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doDelete"

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$a;

    invoke-direct {v0, p0, p1}, Ldouzifly/list/ui/home/MainActivity$a;-><init>(Ldouzifly/list/ui/home/MainActivity;Ldouzifly/list/b/b;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    const v3, 0x7f0c0070

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->J:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    invoke-static {v0, v3}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->dT:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->a(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    goto :goto_0
.end method

.method public final b()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->c:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final b(Ldouzifly/list/b/b;)V
    .locals 2

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doDone"

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$b;

    invoke-direct {v0, p0, p1}, Ldouzifly/list/ui/home/MainActivity$b;-><init>(Ldouzifly/list/ui/home/MainActivity;Ldouzifly/list/b/b;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    return-void
.end method

.method public final c()Ldouzifly/list/widget/InputPanel;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->d:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/InputPanel;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->e:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Ldouzifly/list/widget/TitleLayout;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->f:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/TitleLayout;

    return-object v0
.end method

.method public final f()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->g:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->q:[Lb/f/e;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final g()V
    .locals 1

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$n;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$n;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Ldouzifly/list/ui/home/MainActivity;->h:I

    return v0
.end method

.method public final i()V
    .locals 4

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldouzifly/list/b/e;->a(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->d()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->d()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/b/a;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 4

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lb/g/c;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getContentEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lb/g/c;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lb/g/c;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getSelectedGroup()Ldouzifly/list/b/c;

    move-result-object v3

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$c;

    invoke-direct {v0, p0, v3, v1, v2}, Ldouzifly/list/ui/home/MainActivity$c;-><init>(Ldouzifly/list/ui/home/MainActivity;Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/g;->e()I

    move-result v0

    if-ne v0, p1, :cond_3

    sget v0, Landroid/support/v7/app/AppCompatActivity;->RESULT_OK:I

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_2

    const-string v0, "id"

    neg-int v1, v1

    int-to-long v2, v1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v2

    sget-object v3, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v3, v0, v1}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v2, v0}, Ldouzifly/list/widget/InputPanel;->a(Ldouzifly/list/b/c;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    neg-int v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_3
    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/g;->d()I

    move-result v0

    if-ne v0, p1, :cond_5

    sget v0, Landroid/support/v7/app/AppCompatActivity;->RESULT_OK:I

    if-ne p2, v0, :cond_5

    if-nez p3, :cond_4

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_4
    const-string v0, "id"

    neg-int v1, v1

    int-to-long v2, v1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2, v0, v1}, Ldouzifly/list/d/a;->a(J)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->g()V

    goto :goto_1

    :cond_5
    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/g;->b()I

    move-result v0

    if-ne v0, p1, :cond_7

    sget-object v0, Ldouzifly/list/ui/home/SettingActivity;->a:Ldouzifly/list/ui/home/k;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/k;->a()I

    move-result v0

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_6
    sget-object v0, Ldouzifly/list/ui/home/SettingActivity;->a:Ldouzifly/list/ui/home/k;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/k;->b()I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->g()V

    goto :goto_1

    :cond_7
    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/g;->c()I

    move-result v0

    if-ne v0, p1, :cond_1

    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/a;->b()I

    move-result v0

    if-ne p2, v0, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    :goto_2
    const/4 v0, 0x0

    check-cast v0, Ldouzifly/list/b/b;

    const/4 v1, 0x0

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v0, v2, v3}, Ldouzifly/list/b/e;->c(J)Ldouzifly/list/b/b;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/MainActivity;->a(Ldouzifly/list/b/b;)V

    goto/16 :goto_1

    :cond_9
    const-wide/16 v0, 0x1

    neg-long v0, v0

    move-wide v2, v0

    goto :goto_2

    :cond_a
    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/a;->c()I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->g()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/j;

    iget-object v2, p0, Ldouzifly/list/ui/home/MainActivity;->i:Lb/d/a/b;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Ldouzifly/list/ui/home/h;

    move-object v0, p0

    check-cast v0, La/a/a/a/a/c;

    invoke-direct {v1, p0, v0}, Ldouzifly/list/ui/home/h;-><init>(Ldouzifly/list/ui/home/MainActivity;La/a/a/a/a/c;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, La/a/a/a/a/d;

    check-cast v1, La/a/a/a/a/a;

    invoke-direct {v0, v1}, La/a/a/a/a/d;-><init>(La/a/a/a/a/a;)V

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Ldouzifly/list/ui/home/MainActivity;->j:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->j:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->d()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v0, v2}, Ldouzifly/list/ui/home/j;-><init>(Lb/d/a/b;)V

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/MainActivity;->a(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->i()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->e()Ldouzifly/list/widget/TitleLayout;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$k;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$k;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-virtual {v1, v0}, Ldouzifly/list/widget/TitleLayout;->setTitleClickListener(Lb/d/a/a;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->f()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$l;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$l;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$m;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$m;-><init>(Ldouzifly/list/ui/home/MainActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    sget-object v0, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Ldouzifly/list/e/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v0}, Ldouzifly/list/b/e;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity;->i:Lb/d/a/b;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ldouzifly/list/ui/home/MainActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    iget v0, p0, Ldouzifly/list/ui/home/MainActivity;->h:I

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->l()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->l()I

    move-result v0

    iput v0, p0, Ldouzifly/list/ui/home/MainActivity;->h:I

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->c()V

    :cond_0
    return-void
.end method
