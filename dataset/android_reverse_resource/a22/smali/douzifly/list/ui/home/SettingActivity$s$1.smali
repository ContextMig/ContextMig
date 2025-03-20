.class final Ldouzifly/list/ui/home/SettingActivity$s$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity$s;->onClick(Landroid/content/DialogInterface;I)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity$s;

.field final synthetic b:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity$s;Landroid/content/DialogInterface;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$s$1;->a:Ldouzifly/list/ui/home/SettingActivity$s;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$s$1;->b:Landroid/content/DialogInterface;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity$s$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    sget-object v1, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$s$1;->a:Ldouzifly/list/ui/home/SettingActivity$s;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$s;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "list.db"

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$s$1;->a:Ldouzifly/list/ui/home/SettingActivity$s;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$s;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v2, v3, v0}, Ldouzifly/list/a/c;->a(Ljava/io/File;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$s$1$1;

    invoke-direct {v0, p0, v1}, Ldouzifly/list/ui/home/SettingActivity$s$1$1;-><init>(Ldouzifly/list/ui/home/SettingActivity$s$1;Z)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    return-void
.end method
