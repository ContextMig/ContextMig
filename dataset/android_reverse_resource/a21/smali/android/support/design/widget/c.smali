.class Landroid/support/design/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/i/bl;


# instance fields
.field final synthetic a:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/c;->a:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/i/ec;)Landroid/support/v4/i/ec;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/c;->a:Landroid/support/design/widget/AppBarLayout;

    invoke-static {v0, p2}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/i/ec;)V

    invoke-virtual {p2}, Landroid/support/v4/i/ec;->f()Landroid/support/v4/i/ec;

    move-result-object v0

    return-object v0
.end method
