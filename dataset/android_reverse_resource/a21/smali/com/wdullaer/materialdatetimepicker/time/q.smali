.class Lcom/wdullaer/materialdatetimepicker/time/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/l;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/l;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/q;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/q;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->a()V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/q;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->d(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/q;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/q;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/l;->d(Lcom/wdullaer/materialdatetimepicker/time/l;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    return-void

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
