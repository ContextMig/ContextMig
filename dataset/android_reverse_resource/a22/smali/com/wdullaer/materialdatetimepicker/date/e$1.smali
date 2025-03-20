.class Lcom/wdullaer/materialdatetimepicker/date/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wdullaer/materialdatetimepicker/date/e;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/wdullaer/materialdatetimepicker/date/e;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/e$1;->b:Lcom/wdullaer/materialdatetimepicker/date/e;

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/e$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/e$1;->b:Lcom/wdullaer/materialdatetimepicker/date/e;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/e$1;->a:I

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/e;->setSelection(I)V

    return-void
.end method
