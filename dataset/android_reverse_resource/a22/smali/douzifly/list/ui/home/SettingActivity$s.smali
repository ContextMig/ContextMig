.class final Ldouzifly/list/ui/home/SettingActivity$s;
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

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$s;->a:Ldouzifly/list/ui/home/SettingActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/SettingActivity$s;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "tipDialog"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$s$1;

    invoke-direct {v0, p0, p1}, Ldouzifly/list/ui/home/SettingActivity$s$1;-><init>(Ldouzifly/list/ui/home/SettingActivity$s;Landroid/content/DialogInterface;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    return-void
.end method
