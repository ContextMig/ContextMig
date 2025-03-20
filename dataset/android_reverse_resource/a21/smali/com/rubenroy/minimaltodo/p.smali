.class Lcom/rubenroy/minimaltodo/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/o;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/o;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    move-result-object v0

    const-string v1, "Action"

    const-string v2, "UNDO Pressed"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/o;->a(Lcom/rubenroy/minimaltodo/o;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, v1, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/MainActivity;->d(Lcom/rubenroy/minimaltodo/MainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v2, v2, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v2}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, v1, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const-class v2, Lcom/rubenroy/minimaltodo/TodoNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.avjindersekhon.todonotificationservicetext"

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v2, v2, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v2}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.avjindersekhon.todonotificationserviceuuid"

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v2, v2, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v2}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, v1, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v2, v2, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v2}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v3, v3, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v3}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v1, v0, v2, v4, v5}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;Landroid/content/Intent;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/p;->a:Lcom/rubenroy/minimaltodo/o;

    iget-object v1, v1, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/MainActivity;->d(Lcom/rubenroy/minimaltodo/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/o;->c(I)V

    return-void
.end method
