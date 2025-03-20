.class Lcom/wdullaer/materialdatetimepicker/b;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/wdullaer/materialdatetimepicker/a;


# direct methods
.method constructor <init>(Lcom/wdullaer/materialdatetimepicker/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/b;->a:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/b;->a:Lcom/wdullaer/materialdatetimepicker/a;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/b;->a:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/a;->a(Lcom/wdullaer/materialdatetimepicker/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/a;->a(Lcom/wdullaer/materialdatetimepicker/a;Z)Z

    return-void
.end method
