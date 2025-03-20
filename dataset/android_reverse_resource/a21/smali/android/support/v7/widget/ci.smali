.class Landroid/support/v7/widget/ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ch;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ci;->a:Landroid/support/v7/widget/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ci;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/ch;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ci;->a:Landroid/support/v7/widget/ch;

    invoke-virtual {v0}, Landroid/support/v7/widget/ch;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ci;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/ch;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/ci;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/ch;->a(Landroid/support/v7/widget/ch;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ci;->a:Landroid/support/v7/widget/ch;

    invoke-static {v0}, Landroid/support/v7/widget/ch;->c(Landroid/support/v7/widget/ch;)V

    goto :goto_0
.end method
