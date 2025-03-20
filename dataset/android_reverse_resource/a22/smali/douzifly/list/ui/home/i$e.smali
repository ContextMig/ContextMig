.class final Ldouzifly/list/ui/home/i$e;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/i;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/i;

.field final synthetic b:Ldouzifly/list/b/b;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/i;Ldouzifly/list/b/b;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/i$e;->a:Ldouzifly/list/ui/home/i;

    iput-object p2, p0, Ldouzifly/list/ui/home/i$e;->b:Ldouzifly/list/b/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i$e;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/i$e;->a:Ldouzifly/list/ui/home/i;

    iget-object v0, v0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    iget-object v1, p0, Ldouzifly/list/ui/home/i$e;->b:Ldouzifly/list/b/b;

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/MainActivity;->a(Ldouzifly/list/b/b;)V

    return-void
.end method
