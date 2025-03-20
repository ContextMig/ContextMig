.class final Ldouzifly/list/ui/home/SettingActivity$b$3;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity$b;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity$b;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity$b;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$b$3;->a:Ldouzifly/list/ui/home/SettingActivity$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity$b$3;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v0}, Ldouzifly/list/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v0}, Ldouzifly/list/a/c;->c()I

    move-result v0

    sget-object v1, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v1}, Ldouzifly/list/a/c;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f070041

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$b$3;->a:Ldouzifly/list/ui/home/SettingActivity$b;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$b;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$b$3;->a:Ldouzifly/list/ui/home/SettingActivity$b;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$b;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method
