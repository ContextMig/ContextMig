.class Landroid/support/design/widget/bt;
.super Landroid/support/v4/i/ea;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bq;


# direct methods
.method constructor <init>(Landroid/support/design/widget/bq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bt;->a:Landroid/support/design/widget/bq;

    invoke-direct {p0}, Landroid/support/v4/i/ea;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/bt;->a:Landroid/support/design/widget/bq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/bq;->a(Landroid/support/design/widget/bq;Z)V

    return-void
.end method
