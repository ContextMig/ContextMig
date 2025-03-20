.class final Ldouzifly/list/b/e$b;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/b/e;->a(Ldouzifly/list/b/c;II)Z
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/b/b;

.field final synthetic b:Ldouzifly/list/b/b;


# direct methods
.method constructor <init>(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/b/e$b;->a:Ldouzifly/list/b/b;

    iput-object p2, p0, Ldouzifly/list/b/e$b;->b:Ldouzifly/list/b/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/b/e$b;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ldouzifly/list/b/e$b;->a:Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->save()Ljava/lang/Long;

    iget-object v0, p0, Ldouzifly/list/b/e$b;->b:Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->save()Ljava/lang/Long;

    return-void
.end method
