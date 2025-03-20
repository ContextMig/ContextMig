.class Lcom/wdullaer/materialdatetimepicker/time/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/time/l;


# direct methods
.method private constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/l;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/r;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/l;Lcom/wdullaer/materialdatetimepicker/time/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/r;-><init>(Lcom/wdullaer/materialdatetimepicker/time/l;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/r;->a:Lcom/wdullaer/materialdatetimepicker/time/l;

    invoke-static {v0, p2}, Lcom/wdullaer/materialdatetimepicker/time/l;->b(Lcom/wdullaer/materialdatetimepicker/time/l;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
