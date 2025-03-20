.class Lcom/wdullaer/materialdatetimepicker/date/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/date/o;->a(II)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/wdullaer/materialdatetimepicker/date/o;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/o;II)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->c:Lcom/wdullaer/materialdatetimepicker/date/o;

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->a:I

    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->c:Lcom/wdullaer/materialdatetimepicker/date/o;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->a:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/o;->setSelectionFromTop(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/o$1;->c:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/o;->requestLayout()V

    return-void
.end method
