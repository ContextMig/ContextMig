.class Landroid/support/design/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/w;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/i/bl;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v4/i/bt;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Landroid/support/v4/i/bl;)V

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
