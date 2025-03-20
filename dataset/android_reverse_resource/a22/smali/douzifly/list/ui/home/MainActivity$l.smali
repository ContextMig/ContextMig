.class final Ldouzifly/list/ui/home/MainActivity$l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$l;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    nop

    :try_start_0
    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$l;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Ldouzifly/list/ui/home/MainActivity$l;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/MainActivity;->f()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v3, "st"

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Ldouzifly/list/ui/home/MainActivity$l;->a:Ldouzifly/list/ui/home/MainActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$l;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    const-class v4, Ldouzifly/list/ui/home/SettingActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/g;->b()I

    move-result v0

    invoke-virtual {v2, v3, v0, v1}, Ldouzifly/list/ui/home/MainActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method
