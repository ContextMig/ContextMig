.class Lcom/github/clans/fab/FloatingActionButton$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$3;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$3;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->j(Lcom/github/clans/fab/FloatingActionButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$3;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0}, Lcom/github/clans/fab/FloatingActionButton;->j(Lcom/github/clans/fab/FloatingActionButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionButton$3;->a:Lcom/github/clans/fab/FloatingActionButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
