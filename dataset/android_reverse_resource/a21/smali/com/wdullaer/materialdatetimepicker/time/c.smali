.class Lcom/wdullaer/materialdatetimepicker/time/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/c;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/c;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/a;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/c;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/a;->setAmOrPmPressed(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/c;->a:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->b(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/a;->invalidate()V

    return-void
.end method
