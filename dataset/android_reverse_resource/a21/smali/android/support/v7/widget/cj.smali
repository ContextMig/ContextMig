.class Landroid/support/v7/widget/cj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ch;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ch;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->e:Landroid/support/v7/widget/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/ch;

    iget-object v0, v0, Landroid/support/v7/widget/ch;->e:Landroid/support/v7/widget/cs;

    invoke-virtual {v0}, Landroid/support/v7/widget/cs;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cj;->a:Landroid/support/v7/widget/ch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ch;->b(Landroid/support/v7/widget/ch;Z)Z

    return-void
.end method
