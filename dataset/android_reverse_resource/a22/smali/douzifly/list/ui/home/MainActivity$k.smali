.class final Ldouzifly/list/ui/home/MainActivity$k;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$k;->a:Ldouzifly/list/ui/home/MainActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$k;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$k;->a:Ldouzifly/list/ui/home/MainActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$k;->a:Ldouzifly/list/ui/home/MainActivity;

    check-cast v0, Landroid/content/Context;

    const-class v3, Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/g;->d()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ldouzifly/list/ui/home/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
