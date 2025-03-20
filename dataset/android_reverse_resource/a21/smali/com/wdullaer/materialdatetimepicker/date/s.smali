.class Lcom/wdullaer/materialdatetimepicker/date/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/wdullaer/materialdatetimepicker/date/r;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/r;II)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->c:Lcom/wdullaer/materialdatetimepicker/date/r;

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->a:I

    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->c:Lcom/wdullaer/materialdatetimepicker/date/r;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->a:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/r;->setSelectionFromTop(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/s;->c:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/r;->requestLayout()V

    return-void
.end method
