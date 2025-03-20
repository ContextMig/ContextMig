.class Lcom/rubenroy/minimaltodo/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/AddToDoActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->d(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->c(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v3, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/t;IIZ)Lcom/wdullaer/materialdatetimepicker/time/l;

    move-result-object v0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->e(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avjindersekon.darktheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Z)V

    :cond_0
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/g;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "TimeFragment"

    invoke-virtual {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/l;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method
