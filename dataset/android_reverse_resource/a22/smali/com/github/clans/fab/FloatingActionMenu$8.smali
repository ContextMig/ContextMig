.class Lcom/github/clans/fab/FloatingActionMenu$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->c(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Lcom/github/clans/fab/FloatingActionMenu;Z)Z

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenu;->d(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$8;->a:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionMenu;->d(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/github/clans/fab/c;->a(Z)V

    :cond_0
    return-void
.end method
