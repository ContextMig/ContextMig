.class Landroid/support/design/widget/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/design/widget/aw;


# direct methods
.method constructor <init>(Landroid/support/design/widget/aw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/ax;->a:Landroid/support/design/widget/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/ax;->a:Landroid/support/design/widget/aw;

    iget-object v0, v0, Landroid/support/design/widget/aw;->a:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->b(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
