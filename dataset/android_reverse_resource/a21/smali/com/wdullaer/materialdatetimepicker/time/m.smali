.class Lcom/wdullaer/materialdatetimepicker/time/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/l;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/l;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/m;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/m;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v0, v1, v2, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/l;->a(Lcom/wdullaer/materialdatetimepicker/time/l;IZZZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/m;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/l;->a()V

    return-void
.end method
