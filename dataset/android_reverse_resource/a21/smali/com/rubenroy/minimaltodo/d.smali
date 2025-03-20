.class Lcom/rubenroy/minimaltodo/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/AddToDoActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Reminder Set"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Lcom/rubenroy/minimaltodo/AddToDoActivity;Ljava/util/Date;)Ljava/util/Date;

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v0, p2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Lcom/rubenroy/minimaltodo/AddToDoActivity;Z)Z

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->b(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-virtual {v0, p2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->c(Z)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Landroid/widget/EditText;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/d;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Reminder Removed"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
