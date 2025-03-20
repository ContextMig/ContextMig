.class Lcom/wdullaer/materialdatetimepicker/time/j$5;
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

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$5;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$5;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->e()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$5;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$5;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method
