.class Lcom/wdullaer/materialdatetimepicker/date/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/wdullaer/materialdatetimepicker/date/g;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->b:Lcom/wdullaer/materialdatetimepicker/date/g;

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->b:Lcom/wdullaer/materialdatetimepicker/date/g;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/g;->setSelection(I)V

    return-void
.end method
