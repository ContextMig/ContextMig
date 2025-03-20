.class public final Ldouzifly/list/widget/TitleLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final synthetic f:[Lb/f/e;


# instance fields
.field private final a:Lb/b;

.field private final b:Lb/b;

.field private final c:Lb/b;

.field private d:I

.field private e:Lb/d/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/TitleLayout;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtTitle"

    const-string v5, "getTxtTitle()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/TitleLayout;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtCount"

    const-string v5, "getTxtCount()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/TitleLayout;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "fabSetting"

    const-string v5, "getFabSetting()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/widget/TitleLayout;->f:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ldouzifly/list/widget/TitleLayout$e;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/TitleLayout$e;-><init>(Ldouzifly/list/widget/TitleLayout;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/TitleLayout;->a:Lb/b;

    new-instance v0, Ldouzifly/list/widget/TitleLayout$d;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/TitleLayout$d;-><init>(Ldouzifly/list/widget/TitleLayout;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/TitleLayout;->b:Lb/b;

    new-instance v0, Ldouzifly/list/widget/TitleLayout$a;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/TitleLayout$a;-><init>(Ldouzifly/list/widget/TitleLayout;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/TitleLayout;->c:Lb/b;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/TitleLayout;->d:I

    return v0
.end method

.method public final getFabSetting()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/TitleLayout;->c:Lb/b;

    sget-object v1, Ldouzifly/list/widget/TitleLayout;->f:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getTxtTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleClickListener()Lb/d/a/a;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/TitleLayout;->e:Lb/d/a/a;

    return-object v0
.end method

.method public final getTxtCount()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/TitleLayout;->b:Lb/b;

    sget-object v1, Ldouzifly/list/widget/TitleLayout;->f:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTxtTitle()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/TitleLayout;->a:Lb/b;

    sget-object v1, Ldouzifly/list/widget/TitleLayout;->f:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getTxtTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getTxtTitle()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/widget/TitleLayout$b;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/TitleLayout$b;-><init>(Ldouzifly/list/widget/TitleLayout;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getFabSetting()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->aT:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c002f

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getFabSetting()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Ldouzifly/list/widget/TitleLayout$c;->a:Ldouzifly/list/widget/TitleLayout$c;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setCount(I)V
    .locals 2

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getTxtCount()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Ldouzifly/list/widget/TitleLayout;->d:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/TitleLayout;->getTxtTitle()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleClickListener(Lb/d/a/a;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/TitleLayout;->e:Lb/d/a/a;

    return-void
.end method
