.class Landroid/support/design/widget/Snackbar$7;
.super Landroid/support/v4/view/eq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->animateViewIn()V
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/support/v4/view/eq;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$600(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$Callback;->onShown(Landroid/support/design/widget/Snackbar;)V

    :cond_0
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->access$200(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/Snackbar$7;->this$0:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->access$500(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->animateChildrenIn(II)V

    return-void
.end method
