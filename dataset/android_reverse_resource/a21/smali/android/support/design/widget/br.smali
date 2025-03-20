.class Landroid/support/design/widget/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/support/design/widget/bq;


# direct methods
.method constructor <init>(Landroid/support/design/widget/bq;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/br;->a:Landroid/support/design/widget/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/br;->a:Landroid/support/design/widget/bq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/bq;->a(Landroid/support/design/widget/bq;Z)V

    iget-object v0, p0, Landroid/support/design/widget/br;->a:Landroid/support/design/widget/bq;

    invoke-static {v0}, Landroid/support/design/widget/bq;->a(Landroid/support/design/widget/bq;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/br;->a:Landroid/support/design/widget/bq;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/design/widget/bq;->a(Landroid/support/design/widget/bq;I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
