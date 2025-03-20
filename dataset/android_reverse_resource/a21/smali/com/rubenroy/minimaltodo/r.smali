.class Lcom/rubenroy/minimaltodo/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/o;

.field final synthetic b:Lcom/rubenroy/minimaltodo/q;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/q;Lcom/rubenroy/minimaltodo/o;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/r;->b:Lcom/rubenroy/minimaltodo/q;

    iput-object p2, p0, Lcom/rubenroy/minimaltodo/r;->a:Lcom/rubenroy/minimaltodo/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/r;->b:Lcom/rubenroy/minimaltodo/q;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/q;->q:Lcom/rubenroy/minimaltodo/o;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/o;->a(Lcom/rubenroy/minimaltodo/o;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/r;->b:Lcom/rubenroy/minimaltodo/q;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/q;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/x;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/r;->b:Lcom/rubenroy/minimaltodo/q;

    iget-object v2, v2, Lcom/rubenroy/minimaltodo/q;->q:Lcom/rubenroy/minimaltodo/o;

    iget-object v2, v2, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const-class v3, Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.avjindersinghsekhon.com.avjindersinghsekhon.minimaltodo.MainActivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/r;->b:Lcom/rubenroy/minimaltodo/q;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/q;->q:Lcom/rubenroy/minimaltodo/o;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/rubenroy/minimaltodo/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
