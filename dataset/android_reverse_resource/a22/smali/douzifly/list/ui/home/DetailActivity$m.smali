.class final Ldouzifly/list/ui/home/DetailActivity$m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity;->t()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$m;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$m;->a:Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v0}, Ldouzifly/list/ui/home/DetailActivity;->a(Ldouzifly/list/ui/home/DetailActivity;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
