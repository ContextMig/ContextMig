.class final Ldouzifly/list/ui/home/SettingActivity$q;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/SettingActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/SettingActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/SettingActivity$q;->a:Ldouzifly/list/ui/home/SettingActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity$q;->a(I)V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$q;->a:Ldouzifly/list/ui/home/SettingActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/SettingActivity;->o()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$q;->a:Ldouzifly/list/ui/home/SettingActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/SettingActivity;->m()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity$q;->a:Ldouzifly/list/ui/home/SettingActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/SettingActivity;->o()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
