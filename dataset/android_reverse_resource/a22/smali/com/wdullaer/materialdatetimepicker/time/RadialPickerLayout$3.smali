.class Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/j;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v2

    if-ne v2, v0, :cond_0

    add-int/lit8 v2, p1, 0xc

    rem-int/lit8 p1, v2, 0x18

    :cond_0
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->c(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v2

    if-nez v2, :cond_1

    rem-int/lit8 p1, p1, 0xc

    :cond_1
    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->b()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->c()I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/i;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/i;->a(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
