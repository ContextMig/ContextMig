.class Lcom/rubenroy/minimaltodo/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/MainActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/m;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/m;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    move-result-object v0

    const-string v1, "Action"

    const-string v2, "FAB pressed"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/m;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const-class v2, Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/rubenroy/minimaltodo/x;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/rubenroy/minimaltodo/x;-><init>(Ljava/lang/String;ZLjava/util/Date;)V

    sget-object v2, Lcom/a/a/a/a;->b:Lcom/a/a/a/a;

    invoke-virtual {v2}, Lcom/a/a/a/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rubenroy/minimaltodo/x;->a(I)V

    const-string v2, "com.avjindersinghsekhon.com.avjindersinghsekhon.minimaltodo.MainActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/m;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/rubenroy/minimaltodo/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
