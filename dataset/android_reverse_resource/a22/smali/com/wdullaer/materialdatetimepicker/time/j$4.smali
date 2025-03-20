.class Lcom/wdullaer/materialdatetimepicker/time/j$4;
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

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Lcom/wdullaer/materialdatetimepicker/time/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(Lcom/wdullaer/materialdatetimepicker/time/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Lcom/wdullaer/materialdatetimepicker/time/j;Z)V

    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->h()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/j$4;->a:Lcom/wdullaer/materialdatetimepicker/time/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->e()V

    goto :goto_0
.end method
