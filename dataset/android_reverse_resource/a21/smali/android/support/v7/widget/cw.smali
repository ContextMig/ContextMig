.class Landroid/support/v7/widget/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/cu;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ch;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cw;->a:Landroid/support/v7/widget/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ch;Landroid/support/v7/widget/ci;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/cw;-><init>(Landroid/support/v7/widget/ch;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/do;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/do;->a(Z)V

    iget-object v0, p1, Landroid/support/v7/widget/do;->g:Landroid/support/v7/widget/do;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/do;->h:Landroid/support/v7/widget/do;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroid/support/v7/widget/do;->g:Landroid/support/v7/widget/do;

    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/do;->h:Landroid/support/v7/widget/do;

    invoke-static {p1}, Landroid/support/v7/widget/do;->e(Landroid/support/v7/widget/do;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/cw;->a:Landroid/support/v7/widget/ch;

    iget-object v1, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ch;->c(Landroid/support/v7/widget/ch;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/do;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/cw;->a:Landroid/support/v7/widget/ch;

    iget-object v1, p1, Landroid/support/v7/widget/do;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ch;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
