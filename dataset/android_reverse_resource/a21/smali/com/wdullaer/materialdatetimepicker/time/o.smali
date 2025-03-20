.class Lcom/wdullaer/materialdatetimepicker/time/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/l;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/l;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->b(Lcom/wdullaer/materialdatetimepicker/time/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;Z)V

    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->c(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->c(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/t;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->d(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/l;->d(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/l;->d(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/t;->a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;II)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/o;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->a()V

    goto :goto_0
.end method
