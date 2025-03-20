.class final Ldouzifly/list/ui/home/SettingActivity$a;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity;->m()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity;

.field final synthetic b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity;Landroid/app/ProgressDialog;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$a;->a:Ldouzifly/list/ui/home/SettingActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$a;->b:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity$a;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 3

    sget-object v1, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    const-string v2, "list.db"

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$a;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Ldouzifly/list/a/c;->a(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$a$1;

    invoke-direct {v0, p0, v1}, Ldouzifly/list/ui/home/SettingActivity$a$1;-><init>(Ldouzifly/list/ui/home/SettingActivity$a;Ljava/lang/String;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    return-void
.end method
