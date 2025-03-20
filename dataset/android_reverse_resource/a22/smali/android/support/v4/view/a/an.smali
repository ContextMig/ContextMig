.class public Landroid/support/v4/view/a/an;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/view/a/aq;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/ar;

    invoke-direct {v0}, Landroid/support/v4/view/a/ar;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/ap;

    invoke-direct {v0}, Landroid/support/v4/view/a/ap;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/a/ao;

    invoke-direct {v0}, Landroid/support/v4/view/a/ao;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/a/as;

    invoke-direct {v0}, Landroid/support/v4/view/a/as;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/aq;->a(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public b(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->e(Ljava/lang/Object;I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method public e(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/support/v4/view/a/an;

    iget-object v2, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->f(Ljava/lang/Object;I)V

    return-void
.end method

.method public g(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/an;->a:Landroid/support/v4/view/a/aq;

    iget-object v1, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/aq;->g(Ljava/lang/Object;I)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/an;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
