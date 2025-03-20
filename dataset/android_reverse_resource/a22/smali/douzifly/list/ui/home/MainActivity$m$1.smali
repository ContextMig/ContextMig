.class final Ldouzifly/list/ui/home/MainActivity$m$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity$m;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity$m;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity$m;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$m$1;->a:Ldouzifly/list/ui/home/MainActivity$m;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$m$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$m$1;->a:Ldouzifly/list/ui/home/MainActivity$m;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$m;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->g()V

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$m$1;->a:Ldouzifly/list/ui/home/MainActivity$m;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$m;->a:Ldouzifly/list/ui/home/MainActivity;

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$m$1;->a:Ldouzifly/list/ui/home/MainActivity$m;

    iget-object v1, v1, Ldouzifly/list/ui/home/MainActivity$m;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/MainActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
