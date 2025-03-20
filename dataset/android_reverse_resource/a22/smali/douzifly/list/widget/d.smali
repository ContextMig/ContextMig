.class public final Ldouzifly/list/widget/d;
.super Ljava/lang/Object;


# static fields
.field private static final synthetic a:[Lb/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/d;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "smallFontSize"

    const-string v5, "getSmallFontSize()F"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/d;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "normalFontSize"

    const-string v5, "getNormalFontSize()F"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/d;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "largeFontSize"

    const-string v5, "getLargeFontSize()F"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/widget/d;->a:[Lb/f/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/b/g;)V
    .locals 0

    invoke-direct {p0}, Ldouzifly/list/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    move-object v0, p0

    check-cast v0, Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    check-cast p0, Ldouzifly/list/widget/d;

    invoke-virtual {p0}, Ldouzifly/list/widget/d;->d()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    check-cast v0, Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    check-cast p0, Ldouzifly/list/widget/d;

    invoke-virtual {p0}, Ldouzifly/list/widget/d;->e()F

    move-result v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->c()I

    move-result v0

    if-ne p1, v0, :cond_2

    check-cast p0, Ldouzifly/list/widget/d;

    invoke-virtual {p0}, Ldouzifly/list/widget/d;->f()F

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p0, Ldouzifly/list/widget/d;

    invoke-virtual {p0}, Ldouzifly/list/widget/d;->e()F

    move-result v0

    goto :goto_0
.end method

.method public final a()I
    .locals 1

    invoke-static {}, Ldouzifly/list/widget/FontSizeBar;->b()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    invoke-static {}, Ldouzifly/list/widget/FontSizeBar;->c()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    invoke-static {}, Ldouzifly/list/widget/FontSizeBar;->d()I

    move-result v0

    return v0
.end method

.method public final d()F
    .locals 3

    invoke-static {}, Ldouzifly/list/widget/FontSizeBar;->e()Lb/b;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/d;->a:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final e()F
    .locals 3

    invoke-static {}, Ldouzifly/list/widget/FontSizeBar;->f()Lb/b;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/d;->a:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final f()F
    .locals 3

    invoke-static {}, Ldouzifly/list/widget/FontSizeBar;->g()Lb/b;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/d;->a:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method
