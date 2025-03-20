.class final Ldouzifly/list/ui/home/MainActivity$a;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity;->a(Ldouzifly/list/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;

.field final synthetic b:Ldouzifly/list/b/b;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity;Ldouzifly/list/b/b;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$a;->a:Ldouzifly/list/ui/home/MainActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/MainActivity$a;->b:Ldouzifly/list/b/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$a;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$a;->b:Ldouzifly/list/b/b;

    invoke-virtual {v0, v1}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/b;)V

    sget-object v0, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    sget-object v1, Ldouzifly/list/e/a;->a:Ldouzifly/list/e/a;

    invoke-virtual {v1}, Ldouzifly/list/e/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/e/a;->a(I)V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$a$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$a$1;-><init>(Ldouzifly/list/ui/home/MainActivity$a;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    return-void
.end method
