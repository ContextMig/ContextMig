.class Lcom/wdullaer/materialdatetimepicker/date/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/date/b;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/b;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->j()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Lcom/wdullaer/materialdatetimepicker/date/b;)Lcom/wdullaer/materialdatetimepicker/date/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Lcom/wdullaer/materialdatetimepicker/date/b;)Lcom/wdullaer/materialdatetimepicker/date/f;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Lcom/wdullaer/materialdatetimepicker/date/b;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Lcom/wdullaer/materialdatetimepicker/date/b;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-static {v4}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Lcom/wdullaer/materialdatetimepicker/date/b;)Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/date/f;->a(Lcom/wdullaer/materialdatetimepicker/date/b;III)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/c;->a:Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->dismiss()V

    return-void
.end method
