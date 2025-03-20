.class Lcom/rubenroy/minimaltodo/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/ReminderActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/ReminderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    iget-object v0, v0, Lcom/rubenroy/minimaltodo/ReminderActivity;->j:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Todo Removed from Reminder Activity"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->b(Lcom/rubenroy/minimaltodo/ReminderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/ReminderActivity;->a(Lcom/rubenroy/minimaltodo/ReminderActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->c(Lcom/rubenroy/minimaltodo/ReminderActivity;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->d(Lcom/rubenroy/minimaltodo/ReminderActivity;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/u;->a:Lcom/rubenroy/minimaltodo/ReminderActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/ReminderActivity;->e(Lcom/rubenroy/minimaltodo/ReminderActivity;)V

    return-void
.end method
