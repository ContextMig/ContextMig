.class Landroid/support/design/widget/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/design/widget/al;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/design/widget/al;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/am;->a:Landroid/support/design/widget/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/am;->b:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Landroid/support/design/widget/am;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/am;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/am;->a:Landroid/support/design/widget/al;

    invoke-static {v0}, Landroid/support/design/widget/al;->a(Landroid/support/design/widget/al;)Landroid/support/v4/widget/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/am;->a:Landroid/support/design/widget/al;

    invoke-static {v0}, Landroid/support/design/widget/al;->a(Landroid/support/design/widget/al;)Landroid/support/v4/widget/at;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/at;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/am;->a:Landroid/support/design/widget/al;

    iget-object v1, p0, Landroid/support/design/widget/am;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/widget/am;->c:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/am;->a:Landroid/support/design/widget/al;

    invoke-static {v3}, Landroid/support/design/widget/al;->a(Landroid/support/design/widget/al;)Landroid/support/v4/widget/at;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/at;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/al;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    iget-object v0, p0, Landroid/support/design/widget/am;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/i/bt;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
