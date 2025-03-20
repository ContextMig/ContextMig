.class final Ldouzifly/list/ui/home/DetailActivity$i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$i;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$i;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$i;->a:Ldouzifly/list/ui/home/DetailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/DetailActivity;->a(Z)V

    :cond_0
    return-void
.end method
