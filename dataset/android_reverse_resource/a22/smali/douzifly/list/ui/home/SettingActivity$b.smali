.class final Ldouzifly/list/ui/home/SettingActivity$b;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity;->o()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity;

.field final synthetic b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity;Landroid/app/ProgressDialog;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$b;->a:Ldouzifly/list/ui/home/SettingActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$b;->b:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity$b;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    sget-object v1, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$b;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Ldouzifly/list/a/c;->a(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$b$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$b$1;-><init>(Ldouzifly/list/ui/home/SettingActivity$b;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$b;->a:Ldouzifly/list/ui/home/SettingActivity;

    check-cast v0, Landroid/content/Context;

    const v3, 0x1090011

    invoke-direct {v2, v0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$b$2;

    invoke-direct {v0, p0, v2}, Ldouzifly/list/ui/home/SettingActivity$b$2;-><init>(Ldouzifly/list/ui/home/SettingActivity$b;Landroid/widget/ArrayAdapter;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$b$3;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$b$3;-><init>(Ldouzifly/list/ui/home/SettingActivity$b;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    goto :goto_0
.end method
