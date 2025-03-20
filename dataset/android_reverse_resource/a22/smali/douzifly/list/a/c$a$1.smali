.class final Ldouzifly/list/a/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/a/c$a;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/a/c$a;


# direct methods
.method constructor <init>(Ldouzifly/list/a/c$a;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/a/c$a$1;->a:Ldouzifly/list/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Ldouzifly/list/a/c$a$1;->a:Ldouzifly/list/a/c$a;

    iget-object v1, v0, Ldouzifly/list/a/c$a;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ldouzifly/list/a/c$a$1;->a:Ldouzifly/list/a/c$a;

    iget-object v3, v3, Ldouzifly/list/a/c$a;->b:Ljava/lang/String;

    aput-object v3, v0, v2

    nop

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    sget-object v2, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v2}, Ldouzifly/list/a/c;->a()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    sget-object v0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    iget-object v1, p0, Ldouzifly/list/a/c$a$1;->a:Ldouzifly/list/a/c$a;

    iget v1, v1, Ldouzifly/list/a/c$a;->c:I

    invoke-virtual {v0, v1}, Ldouzifly/list/a/c;->a(I)V

    return-void
.end method
