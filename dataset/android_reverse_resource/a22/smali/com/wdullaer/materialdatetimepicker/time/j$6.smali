.class Lcom/wdullaer/materialdatetimepicker/time/j$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/time/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/j;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/j;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$6;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$6;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$6;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$6;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->e()V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$6;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(Lcom/wdullaer/materialdatetimepicker/time/j;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$6;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->c(Lcom/wdullaer/materialdatetimepicker/time/j;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method
