.class final Ldouzifly/list/ui/home/SettingActivity$p;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# static fields
.field public static final a:Ldouzifly/list/ui/home/SettingActivity$p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$p;

    invoke-direct {v0}, Ldouzifly/list/ui/home/SettingActivity$p;-><init>()V

    sput-object v0, Ldouzifly/list/ui/home/SettingActivity$p;->a:Ldouzifly/list/ui/home/SettingActivity$p;

    return-void
.end method

.method constructor <init>()V
    .locals 1

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

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity$p;->a(I)V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0, p1}, Ldouzifly/list/d/a;->a(I)V

    return-void
.end method
