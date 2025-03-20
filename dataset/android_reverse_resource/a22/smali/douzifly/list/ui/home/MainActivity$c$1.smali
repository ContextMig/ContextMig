.class final Ldouzifly/list/ui/home/MainActivity$c$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity$c;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity$c;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity$c;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$c$1;->a:Ldouzifly/list/ui/home/MainActivity$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$c$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v0

    sget-object v2, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v2}, Ldouzifly/list/b/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$c$1;->a:Ldouzifly/list/ui/home/MainActivity$c;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$c;->b:Ldouzifly/list/b/c;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$c$1;->a:Ldouzifly/list/ui/home/MainActivity$c;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$c;->b:Ldouzifly/list/b/c;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    const-string v2, "selectedGroup.id"

    invoke-static {v0, v2}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldouzifly/list/d/a;->a(J)V

    :cond_0
    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$c$1;->a:Ldouzifly/list/ui/home/MainActivity$c;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$c;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->g()V

    return-void
.end method
