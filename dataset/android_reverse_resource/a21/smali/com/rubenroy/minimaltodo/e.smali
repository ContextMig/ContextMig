.class Lcom/rubenroy/minimaltodo/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/AddToDoActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->c(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->c(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Date in the Past"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Make Todo"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/e;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(I)V

    goto :goto_0
.end method
