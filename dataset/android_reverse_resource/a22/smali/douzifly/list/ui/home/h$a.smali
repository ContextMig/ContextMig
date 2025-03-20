.class final Ldouzifly/list/ui/home/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/h;->a(Ldouzifly/list/ui/home/i;I)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/h;

.field final synthetic b:Ldouzifly/list/ui/home/i;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/h;Ldouzifly/list/ui/home/i;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/h$a;->a:Ldouzifly/list/ui/home/h;

    iput-object p2, p0, Ldouzifly/list/ui/home/h$a;->b:Ldouzifly/list/ui/home/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/h$a;->a:Ldouzifly/list/ui/home/h;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/h;->a()La/a/a/a/a/c;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/h$a;->b:Ldouzifly/list/ui/home/i;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-interface {v1, v0}, La/a/a/a/a/c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    return v0
.end method
