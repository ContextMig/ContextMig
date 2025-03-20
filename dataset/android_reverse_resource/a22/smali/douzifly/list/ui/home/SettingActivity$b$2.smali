.class final Ldouzifly/list/ui/home/SettingActivity$b$2;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity$b;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity$b;

.field final synthetic b:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity$b;Landroid/widget/ArrayAdapter;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$b$2;->a:Ldouzifly/list/ui/home/SettingActivity$b;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$b$2;->b:Landroid/widget/ArrayAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity$b$2;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$b$2;->a:Ldouzifly/list/ui/home/SettingActivity$b;

    iget-object v0, v0, Ldouzifly/list/ui/home/SettingActivity$b;->a:Ldouzifly/list/ui/home/SettingActivity;

    iget-object v1, p0, Ldouzifly/list/ui/home/SettingActivity$b$2;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/SettingActivity;->a(Landroid/widget/ArrayAdapter;)V

    return-void
.end method
