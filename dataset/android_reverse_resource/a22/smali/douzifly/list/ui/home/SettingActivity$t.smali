.class final Ldouzifly/list/ui/home/SettingActivity$t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$t;->a:Ldouzifly/list/ui/home/SettingActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "tipDialog"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$t;->a:Ldouzifly/list/ui/home/SettingActivity;

    const-string v1, ""

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ldouzifly/list/f/a;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldouzifly/list/ui/home/SettingActivity$t;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
