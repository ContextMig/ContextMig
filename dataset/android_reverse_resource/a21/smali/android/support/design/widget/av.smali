.class Landroid/support/design/widget/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/bo;


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/av;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/bg;->a()Landroid/support/design/widget/bg;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/av;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bg;->c(Landroid/support/design/widget/bi;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/bg;->a()Landroid/support/design/widget/bg;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/av;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/bg;->d(Landroid/support/design/widget/bi;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/av;->a:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
