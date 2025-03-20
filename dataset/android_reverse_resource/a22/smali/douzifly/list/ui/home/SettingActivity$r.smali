.class final Ldouzifly/list/ui/home/SettingActivity$r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity;->a(Landroid/widget/ArrayAdapter;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity;

.field final synthetic b:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$r;->a:Ldouzifly/list/ui/home/SettingActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$r;->b:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Ldouzifly/list/ui/home/SettingActivity$r;->a:Ldouzifly/list/ui/home/SettingActivity;

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$r;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/a/a;

    invoke-virtual {v0}, Ldouzifly/list/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldouzifly/list/ui/home/SettingActivity;->a(Ljava/lang/String;)V

    return-void
.end method
