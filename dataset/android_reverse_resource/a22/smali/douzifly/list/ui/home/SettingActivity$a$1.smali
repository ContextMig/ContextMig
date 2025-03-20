.class final Ldouzifly/list/ui/home/SettingActivity$a$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity$a;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity$a;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity$a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->a:Ldouzifly/list/ui/home/SettingActivity$a;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity$a$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    const-wide/16 v2, 0x1f4

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$a$1$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$a$1$1;-><init>(Ldouzifly/list/ui/home/SettingActivity$a$1;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->b:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    nop

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v0}, Ldouzifly/list/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v0}, Ldouzifly/list/a/c;->c()I

    move-result v0

    sget-object v1, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v1}, Ldouzifly/list/a/c;->b()I

    move-result v1

    if-eq v0, v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f07002e

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->a:Ldouzifly/list/ui/home/SettingActivity$a;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$a;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->a:Ldouzifly/list/ui/home/SettingActivity$a;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$a;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    const v1, 0x7f07002f

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->a:Ldouzifly/list/ui/home/SettingActivity$a;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$a;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$a$1;->a:Ldouzifly/list/ui/home/SettingActivity$a;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$a;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    goto :goto_1
.end method
