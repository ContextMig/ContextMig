.class final Ldouzifly/list/ui/home/i$d;
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

    iput-object p1, p0, Ldouzifly/list/ui/home/i$d;->a:Ldouzifly/list/ui/home/i;

    iput-object p2, p0, Ldouzifly/list/ui/home/i$d;->b:Ldouzifly/list/b/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i$d;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    const-wide/16 v0, 0x64

    iget-object v2, p0, Ldouzifly/list/ui/home/i$d;->b:Ldouzifly/list/b/b;

    invoke-virtual {v2}, Ldouzifly/list/b/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Ldouzifly/list/ui/home/i$d;->a:Ldouzifly/list/ui/home/i;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/i;->d()V

    :cond_0
    move-wide v2, v0

    new-instance v0, Ldouzifly/list/ui/home/i$d$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/i$d$1;-><init>(Ldouzifly/list/ui/home/i$d;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    return-void
.end method
